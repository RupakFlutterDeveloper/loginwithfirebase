import 'package:escortservic/auth_reposetory/firebaseAuthentaction.dart';
import 'package:escortservic/bloc/FirebaseAuth_Event.dart';
import 'package:escortservic/bloc/FirebaseAuth_State.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirebaseAuthBloc extends Bloc<FirebaseAuthEvent, FirebaseAuthState> {
  final FirebaseAuthService firebaseService;
  FirebaseAuthBloc(this.firebaseService) : super(FirebaseAuthInitial()) {
    on<SignupButtonPressedEvent>(
      (event, emit) async {
        try {
          await firebaseService.signupFirebase(event.userModel);
          emit(FirebaseAuthSignupSuccess());
        } catch (e) {
          emit(FirebaseAuthFailure("${e.toString()}"));
        }
      },
    );

    on<LoginButtonPressedEvent>(
      (event, emit) async {
        try {
          await firebaseService.loginFirebase(event.userModel);
          emit(FirebaseAuthLoginSuccess());
        } catch (e) {
          emit(FirebaseAuthFailure("${e.toString()}"));
        }
      },
    );
  }
}
