import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chatting_app/DatabaseService.dart';

class AuthService {
  Future<void> logoutUser() async {
    if (await isUserLogin()) {
      await FirebaseAuth.instance.signOut();
    }
  }

  Future<bool> signupUser(String email, String password) async {
    AuthResult authResult = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: email.trim(), password: password.trim());

    if (authResult.user != null) {
      await DatabaseService().saveUserInformation(authResult.user);
      return true;
    } else
      return false;
  }

  Future<void> forgotPassword(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  Future<String> loginUser(String email, String password) async {
    try {
      if (await isUserLogin()) {
        return "success";
      }

      AuthResult authResult = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email.trim(), password: password.trim());

      if (authResult.user != null) {
        await DatabaseService().saveUserInformation(authResult.user);

        return "success";
      } else
        return "Login Failed!";
    } catch (e) {
      return e.message;
    }
  }

  Future<FirebaseUser> getCurrentUser() async {
    return await FirebaseAuth.instance.currentUser();
  }

  Future<bool> isUserLogin() async {
    FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();

    if (firebaseUser == null)
      return false;
    else
      return true;
  }
}
