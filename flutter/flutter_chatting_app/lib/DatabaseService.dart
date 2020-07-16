import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_chatting_app/AuthService.dart';
import 'package:flutter_chatting_app/models/UserModel.dart';

class DatabaseService {
  Future<List<UserModel>> getAppUsers() async {
    try {
      DataSnapshot dataSnapshot =
          await FirebaseDatabase.instance.reference().child("users").once();

      Map<dynamic, dynamic> map = dataSnapshot.value;

      FirebaseUser currentUser = await AuthService().getCurrentUser();

      List<UserModel> users = List();
      UserModel userModel;
      map.forEach((key, value) async {
        print("key: " + key + ", value: " + value['email']);

        if (value['email'] != currentUser.email) {
          userModel = UserModel();

          userModel.email = value['email'];
          userModel.uid = key;
          users.add(userModel);
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
