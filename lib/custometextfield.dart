import 'package:flutter/material.dart';

class Custometextfield extends StatelessWidget {
  TextEditingController controller;
  String labelText;
  String hintText;
  IconData? prefixIcon;
  Widget? suffixIcon;
  bool isPassword;
  String? prefixtext;
  Custometextfield({
    required this.controller,
    required this.hintText,
    required this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixtext,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    //  var mQheight = MediaQuery.of(context).size.height;
    var mQwidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        width: mQwidth * 0.7,
        child: TextField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(prefixIcon),
            prefixText: prefixtext,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: Colors.white.withOpacity(0.4),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 2, color: Colors.blue)),
          ),
        ),
      ),
    );
  }
}
