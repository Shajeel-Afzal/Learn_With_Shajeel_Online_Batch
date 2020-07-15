import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_chatting_app/AuthService.dart';

class DatabaseService {
  Future<List<String>> getAppUsers() async {
    try {
      DataSnapshot dataSnapshot =
          await FirebaseDatabase.instance.reference().child("users").once();

      Map<dynamic, dynamic> map = dataSnapshot.value;

      FirebaseUser currentUser = await AuthService().getCurrentUser();

      List<String> users = List();
      map.forEach((key, value) async {
        print("key: " + key + ", value: " + value['email']);

        if (value['email'] != currentUser.email) {
          users.add(value['email']);
        }
      });

      return users;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<bool> saveUserInformation(FirebaseUser firebaseUser) async {
    try {
      Map<String, dynamic> usersInfoMap = Map();
      // usersInfoMap.putIfAbsent("name", () => firebaseUser.displayName);
      usersInfoMap['email'] = firebaseUser.email;
      // usersInfoMap['createdTime'] = firebaseUser.metadata.creationTime;

      await FirebaseDatabase.instance
          .reference()
          .child("users")
          .child(firebaseUser.uid)
          .update(usersInfoMap);

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
