import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future<bool> isUserLogin() async {
    FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();

    if (firebaseUser == null)
      return false;
    else
      return true;
  }
}
