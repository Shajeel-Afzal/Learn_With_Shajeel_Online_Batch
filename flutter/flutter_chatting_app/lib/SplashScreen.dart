import 'package:flutter/material.dart';
import 'package:flutter_chatting_app/AuthService.dart';
import 'package:flutter_chatting_app/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    AuthService().isUserLogin().then(
      (value) async {
        await Future.delayed(Duration(seconds: 1));

        if (value) {
          // Navigate user to Chat Screen
        } else {
          Navigator.pop(context);

          // Navigate user to the Login Screen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return LoginScreen();
              },
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: LinearProgressIndicator(),
        ),
      ),
    );
  }
}
