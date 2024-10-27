abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthInProgress extends AuthState {}

class AuthSignupSuccess extends AuthState {}

class AuthLoginSuccess extends AuthState {}

class AuthFailure extends AuthState {
  final String error;

  AuthFailure(this.error);
}
