import 'package:flutter/material.dart';
import 'package:flutter_chatting_app/AuthService.dart';
import 'package:flutter_chatting_app/DatabaseService.dart';
import 'package:flutter_chatting_app/LoginScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _users = List();

  @override
  void initState() {
    super.initState();

    DatabaseService().getAppUsers().then(
      (value) {
        setState(() {
          _users = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("eRozgaar Chat"),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.signOutAlt),
            onPressed: () async {
              await AuthService().logoutUser();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return LoginScreen();
                  },
                ),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: _buildListItem(),
      ),
    );
  }

  List<Widget> _buildListItem() {
    List<Widget> widgets = List();
    for (var user in _users) {
      widgets.add(
        Padding(
          padding: EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
          child: Card(
            child: ListTile(
              title: Text(user),
            ),
          ),
        ),
      );
    }

    return widgets;
  }
}
