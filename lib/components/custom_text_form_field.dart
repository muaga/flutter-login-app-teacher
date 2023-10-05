import 'package:flutter/material.dart';
import 'package:flutter_login_app/size.dart';

class CustomTextFormField extends StatelessWidget {
  String text;
  bool isPassword;

  CustomTextFormField({required this.text, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${text}"),
        SizedBox(height: small_gap),
        TextFormField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: "Enter ${text}",
            enabledBorder: OutlineInputBorder(
              // enabledBorder = 디폴트 Border
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
