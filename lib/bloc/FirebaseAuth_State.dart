abstract class FirebaseAuthState {}

class FirebaseAuthInitial extends FirebaseAuthState {}

class FirebaseAuthSignupSuccess extends FirebaseAuthState {}

class FirebaseAuthLoginSuccess extends FirebaseAuthState {}

class FirebaseAuthFailure extends FirebaseAuthState {
  final String error;

  FirebaseAuthFailure(this.error);
}
