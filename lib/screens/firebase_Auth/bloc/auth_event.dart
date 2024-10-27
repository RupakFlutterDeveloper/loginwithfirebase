import 'package:escortservic/screens/firebase_Auth/authloginmodel.dart';
import 'package:escortservic/screens/firebase_Auth/authsignupModel.dart';

abstract class AuthEvent {}

class SignupRequested extends AuthEvent {
  final AuthSignupModel signupData;

  SignupRequested(this.signupData);
}

class LoginRequested extends AuthEvent {
  final AuthloginModel loginData;

  LoginRequested(this.loginData);
}
