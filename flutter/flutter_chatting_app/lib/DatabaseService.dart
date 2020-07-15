import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class DatabaseService {
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
