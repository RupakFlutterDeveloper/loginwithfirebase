import 'package:escortservic/custometextfield.dart';
import 'package:escortservic/dashboard.dart';
import 'package:escortservic/screens/firebase_Auth/firebaseAuth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Firebaseauth firebaseauth = Firebaseauth();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisibility = false;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void signin() async {
    if (emailController.text.isNotEmpty || passwordController.text.isNotEmpty) {
      UserCredential userDetails = await firebaseauth.logiFirebase(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return Dashboard();
        },
      ));
      print(userDetails);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Please fill all the fields')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Custometextfield(
              prefixIcon: Icons.email,
              controller: emailController,
              hintText: "Enter Email",
              labelText: "Email"),
          customTextTrogle(),
          SizedBox(
            height: 15,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    signin();
                  },
                  child: Text(
                    "Sign-Up".toUpperCase(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )))
        ],
      ),
    );
  }

//Custome Widget Troggle Button
  Widget customTextTrogle() {
    return Custometextfield(
        prefixIcon: Icons.lock,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isVisibility = !isVisibility;
            });
          },
          icon: Icon(isVisibility ? Icons.visibility : Icons.visibility_off),
        ),
        controller: passwordController,
        isPassword: !isVisibility,
        hintText: "Enter Password",
        labelText: "Password");
  }
}
