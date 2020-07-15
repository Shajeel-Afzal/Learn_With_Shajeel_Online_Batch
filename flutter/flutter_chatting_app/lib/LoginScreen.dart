import 'package:flutter/material.dart';
import 'package:flutter_chatting_app/AuthService.dart';
import 'package:flutter_chatting_app/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email;

  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    onChanged: (value) {
                      _email = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    onChanged: (value) {
                      _password = value;
                    },
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: RaisedButton(
                          child: Text("Login"),
                          onPressed: () async {
                            String result = await AuthService()
                                .loginUser(_email, _password);
                            if (result == "success") {
                              // Login Successful: Navigate user to the Home Screen
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return HomeScreen();
                                }),
                                (route) => false,
                              );
                            } else {
                              showDialog(
                                context: context,
                                child: AlertDialog(
                                  content: Text(result),
                                  actions: [
                                    RaisedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("OK"),
                                    )
                                  ],
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: OutlineButton(
                          child: Text("Forgot Password?"),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  RaisedButton(
                    onPressed: () async {
                      bool result =
                          await AuthService().signupUser(_email, _password);

                      if (result) {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                          builder: (BuildContext context) {
                            return HomeScreen();
                          },
                        ), (route) => false);
                      }
                    },
                    child: Text("Signup"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
