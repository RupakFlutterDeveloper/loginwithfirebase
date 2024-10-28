import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:escortservic/model/firebaseauth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  // Firebase authentication instance
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // Firestore instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Signup function
  Future<UserCredential?> signupFirebase(FirebaseAuthModel userData) async {
    try {
      // Create user in Firebase Auth
      var signUp = await _firebaseAuth.createUserWithEmailAndPassword(
        email: userData.userEmail.toString(),
        password: userData.userPassword.toString(),
      );

      // Store user data in Firestore (excluding password)
      await _firestore.collection('user').doc(signUp.user!.uid).set({
        'userName': userData.userName,
        'userEmail': userData.userEmail,
        'userPassword': userData.userPassword,
        'userNumber': userData.userNumber,
        'userGender': userData.userGender,
        'penisLength': userData.penisLength,
        'userAddress': userData.userAddress,
      });

      return signUp;
    } on FirebaseException catch (e) {
      print("Firebase error: ${e.message}");
      return null;
    } catch (e) {
      print("Unexpected error: ${e.toString()}");
      return null;
    }
  }

  // Login function
  Future<UserCredential?> loginFirebase(FirebaseAuthModel userData) async {
    try {
      var signIn = await _firebaseAuth.signInWithEmailAndPassword(
        email: userData.userEmail.toString(),
        password: userData.userPassword.toString(),
      );
      return signIn;
    } on FirebaseAuthException catch (e) {
      print("Firebase error: ${e.message}");
      return null;
    } catch (e) {
      print("Unexpected error: $e");
      return null;
    }
  }
}
