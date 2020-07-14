import 'package:flutter/material.dart';
import 'package:flutter_chatting_app/AuthService.dart';
import 'package:flutter_chatting_app/LoginScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    );
  }
}
