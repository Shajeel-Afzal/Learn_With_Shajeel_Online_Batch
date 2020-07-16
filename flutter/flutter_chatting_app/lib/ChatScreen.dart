import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chatting_app/AuthService.dart';
import 'package:flutter_chatting_app/models/MessageModel.dart';
import 'package:flutter_chatting_app/models/UserModel.dart';
import 'package:flutter_chatting_app/services/ChatService.dart';

class ChatScreen extends StatefulWidget {
  UserModel userModel;

  ChatScreen(this.userModel);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String _userMessage;
  List<MessageModel> _messages = List();

  TextEditingController _inputController = TextEditingController();

  String _userId;

  @override
  void initState() {
    super.initState();

    AuthService().getCurrentUser().then((value) {
      setState(() {
        _userId = value.uid;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder(
                stream: ChatService().getMessage(_userId, widget.userModel.uid),
                builder: (BuildContext context, AsyncSnapshot<Event> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text("Error occured while loading Chat!"),
                        ),
                      );
                    } else if (snapshot.data == null) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text("Start the conversation by saying Hi!"),
                        ),
                      );
                    } else {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text("Start the conversation by saying Hi!"),
                        ),
                      );
                    }
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _inputController,
                    onChanged: (value) {
                      _userMessage = value;
                    },
                    decoration: InputDecoration(hintText: "Enter your message"),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () async {
                    _inputController.clear();

                    await ChatService()
                        .insertMessage(_userMessage, widget.userModel.uid);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
