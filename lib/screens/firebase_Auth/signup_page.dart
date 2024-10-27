import 'package:escortservic/custometextfield.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController mobileController =
      TextEditingController(text: "+91 ");

  bool isVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Name Field
            Custometextfield(
              prefixIcon: Icons.person,
              labelText: "Name",
              controller: nameController,
              hintText: "Enter Name",
            ),
            // Email Field
            Custometextfield(
              prefixIcon: Icons.email,
              labelText: "Email",
              controller: emailController,
              hintText: "Enter Email",
            ),
            // Password Field
            CustomeTroggle(),
            // Mobile Field
            Custometextfield(
              prefixIcon: Icons.phone,
              labelText: "Mobile",
              controller: mobileController,
              hintText: "Enter Mobile Number",
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  child: Text("Login".toUpperCase(),
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }

  Widget CustomeTroggle() {
    return Custometextfield(
      prefixIcon: Icons.lock,
      labelText: "Password",
      controller: passwordController,
      hintText: "Password",
      isPassword: !isVisibility,
      suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isVisibility = !isVisibility;
            });
          },
          icon: Icon(isVisibility ? Icons.visibility : Icons.visibility_off)),
    );
  }
}
