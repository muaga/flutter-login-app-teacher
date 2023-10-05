import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/custom_text_form_field.dart';
import 'package:flutter_login_app/components/logo.dart';
import 'package:flutter_login_app/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            // inset 영역 때문에
            children: [
              SizedBox(height: xlarge_gap),
              Logo("Login"),
              Form(
                // input 데이터를 한방에 submit할 때 사용; 통신 전송
                // Form 태그 속 Button을 눌릴 때, validation 검사를 할 수 있다.
                child: Column(
                  // 아래의 함수를 컴포넌트화 시키기 위해
                  children: [
                    CustomTextFormField(text: "Email"),
                    SizedBox(height: large_gap),
                    CustomTextFormField(text: "Password", isPassword: true),
                    SizedBox(height: large_gap),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/home"); // 페이지 이동
                        },
                        child: Text("Login"))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
