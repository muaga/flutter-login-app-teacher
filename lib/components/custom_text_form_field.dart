import 'package:flutter/material.dart';
import 'package:flutter_login_app/size.dart';

class CustomTextFormField extends StatelessWidget {
  final textController; // validate()안에 들어갈 _email, _password를 넣기 위해
  final validate;
  String text;
  bool isPassword;

  CustomTextFormField(
      {required this.text,
      required this.validate,
      this.textController,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${text}"),
        SizedBox(height: small_gap),
        TextFormField(
          controller:
              textController, // -> controller를 통해서 _email, _password 값을 가져온다
          // 1. value가 들어옴
          // 2. value로 유효성 검사하기
          // 3. return
          validator: validate,
          obscureText: isPassword,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.access_alarm),
            suffixIcon: Icon(Icons.access_alarm, color: Colors.blue),
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
