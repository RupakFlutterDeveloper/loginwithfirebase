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
          var result = await firebaseService.signupFirebase(event.userModel);
          if (result != null) {
            emit(FirebaseAuthSignupSuccess());
          } else {
            emit(FirebaseAuthFailure("Invalid Email or Password"));
          }
        } catch (e) {
          emit(FirebaseAuthFailure("${e.toString()}"));
        }
      },
    );

    on<LoginButtonPressedEvent>(
      (event, emit) async {
        try {
          var result = await firebaseService.loginFirebase(event.userModel);
          if (result != null) {
            emit(FirebaseAuthLoginSuccess());
            print("Logic successful");
          } else {
            emit(FirebaseAuthFailure("Invalid Email or Password"));
          }
        } catch (e) {
          emit(FirebaseAuthFailure("${e.toString()}"));
        }
      },
    );
  }
}
