import 'package:escortservic/screens/firebase_Auth/authloginmodel.dart';
import 'package:escortservic/screens/firebase_Auth/authsignupModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  AuthBloc() : super(AuthInitial()) {
    on<LoginRequested>(_onLoginRequested);
    on<SignupRequested>(_onSignupRequested);
  }

  // Function to handle signup
  Future<void> _onSignupRequested(
      SignupRequested event, Emitter<AuthState> emit) async {
    emit(AuthInProgress());
    final result = await _signup(event.signupData); // Use the complete model
    emit(result);
  }

  // Function to handle login
  Future<void> _onLoginRequested(
      LoginRequested event, Emitter<AuthState> emit) async {
    emit(AuthInProgress());
    final result = await _login(event.loginData);
    emit(result);
  }

  // Signup function
  Future<AuthState> _signup(AuthSignupModel signupData) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: signupData.userEmail,
        password: signupData.userPassword,
      );

      // You can also save additional data to Firestore if required
      return AuthSignupSuccess();
    } on FirebaseAuthException catch (e) {
      return AuthFailure(e.message ?? 'Unknown error occurred');
    } catch (error) {
      return AuthFailure('An error occurred');
    }
  }

  // Login function
  Future<AuthState> _login(AuthloginModel loginData) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: loginData.userEmail,
        password: loginData.userPassword,
      );
      return AuthLoginSuccess();
    } on FirebaseAuthException catch (e) {
      return AuthFailure(e.message ?? 'Unknown error occurred');
    } catch (error) {
      return AuthFailure('An error occurred');
    }
  }
}
