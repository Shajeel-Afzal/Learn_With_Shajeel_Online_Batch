import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:usa_news_flutter/APIResponse.dart';
import 'package:usa_news_flutter/APIService.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("USA News"),
      ),
      body: FutureBuilder(
        future: APIService().getUsaNews(),
        builder: (BuildContext context, AsyncSnapshot<APIResponse> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Sorry, something went wrong! Please check later"),
              );
            } else {
              return ListView(
                children: snapshot.data.articles.map((article) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () async {
                        await launch(article.url);
                      },
                      child: Card(
                        child: Column(
                          children: [
                            article.urlToImage != null
                                ? Image.network(
                                    article.urlToImage,
                                    height: 230,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  )
                                : Container(),
                            ListTile(
                              title: Text(article.title),
                              subtitle:
                                  Container(child: Text(article.source.name)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              );
            }
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
