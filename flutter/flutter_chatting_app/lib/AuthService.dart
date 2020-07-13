import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future<void> loginUser(String email, String password) async {
    AuthResult authResult = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    print(authResult);

    // await FirebaseAuth.instance.verifyPhoneNumber(
    //   phoneNumber: "+923003419643",
    //   timeout: Duration(seconds: 10),
    //   verificationCompleted: (phoneAuthCredential) {
    //     print("verificationCompleted Called!");
    //   },
    //   verificationFailed: (error) {
    //     print("verification failed!");
    //   },
    //   codeSent: (verificationId, [forceResendingToken]) {
    //     print("codeSent");
    //   },
    //   codeAutoRetrievalTimeout: (verificationId) {
    //     print("codeAutoRetrievalTimeout called!");
    //   },
    // );
  }

  Future<bool> isUserLogin() async {
    FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();

    if (firebaseUser == null)
      return false;
    else
      return true;
  }
}
