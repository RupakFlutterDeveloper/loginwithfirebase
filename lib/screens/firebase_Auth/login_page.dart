import 'package:escortservic/bloc/FirebaseAuth_Event.dart';
import 'package:escortservic/bloc/FirebaseAuth_State.dart';
import 'package:escortservic/bloc/auth_bloc.dart';
import 'package:escortservic/custometextfield.dart';
import 'package:escortservic/dashboard.dart';
import 'package:escortservic/model/firebaseauth_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  FirebaseAuthModel AuthModel = FirebaseAuthModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: BlocBuilder<FirebaseAuthBloc, FirebaseAuthState>(
        builder: (context, state) {
          if (state is FirebaseAuthLoginSuccess) {
            // Navigate to Dashboard on successful login
            return Dashboard();
          } else if (state is FirebaseAuthFailure) {
            // Display error message if login fails
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Custometextfield(
                    controller: emailController,
                    hintText: "Enter your email",
                    labelText: "Email",
                  ),
                  SizedBox(height: 16),
                  Custometextfield(
                    controller: passwordController,
                    hintText: "Enter your password",
                    labelText: "Password",
                    // obscureText: true,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Dispatch login event with email and password

                      AuthModel.userEmail = emailController.text.trim();
                      AuthModel.userPassword = passwordController.text.trim();

                      context.read<FirebaseAuthBloc>().add(
                            LoginButtonPressedEvent(userModel: AuthModel),
                          );
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Custometextfield(
                  controller: emailController,
                  hintText: "Enter your email",
                  labelText: "Email",
                ),
                SizedBox(height: 16),
                Custometextfield(
                  controller: passwordController,
                  hintText: "Enter your password",
                  labelText: "Password",
                  // obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Dispatch login event with email and password

                    AuthModel.userEmail = emailController.text.trim();
                    AuthModel.userPassword = passwordController.text.trim();

                    context.read<FirebaseAuthBloc>().add(
                          LoginButtonPressedEvent(userModel: AuthModel),
                        );
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
