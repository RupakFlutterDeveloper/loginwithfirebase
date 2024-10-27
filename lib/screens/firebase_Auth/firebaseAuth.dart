import 'package:firebase_auth/firebase_auth.dart';

class Firebaseauth {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  Future<UserCredential> logiFirebase(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception("Sign in Fails ${e}");
    }
  }

  Future<dynamic> logoutFirebase() async {
    await firebaseAuth.signOut();
  }
}
