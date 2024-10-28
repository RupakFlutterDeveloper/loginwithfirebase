import 'package:escortservic/model/firebaseauth_model.dart';

abstract class FirebaseAuthEvent {}

//signup events
class SignupButtonPressedEvent extends FirebaseAuthEvent {
  FirebaseAuthModel userModel;
  SignupButtonPressedEvent({required this.userModel});
}

//Login Events
class LoginButtonPressedEvent extends FirebaseAuthEvent {
  FirebaseAuthModel userModel;
  LoginButtonPressedEvent({required this.userModel});
}
