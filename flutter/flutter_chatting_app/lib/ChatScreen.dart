import 'package:flutter/material.dart';
import 'package:flutter_chatting_app/models/MessageModel.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String _userMessage;
  List<MessageModel> _messages = List();

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
              child: ListView(
                reverse: true,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 100),
                    color: Colors.green,
                    child: ListTile(
                      title: Text("Hi"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 100),
                    color: Colors.red,
                    child: ListTile(
                      title: Text("Hello"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 100),
                    color: Colors.green,
                    child: ListTile(
                      title: Text("How are you?"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 100),
                    color: Colors.red,
                    child: ListTile(
                      title: Text("I am fine, how are you?"),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      _userMessage = value;
                    },
                    decoration: InputDecoration(hintText: "Enter your message"),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
