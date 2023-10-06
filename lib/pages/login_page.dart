import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/custom_form.dart';
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
              CustomForm(),
            ],
          ),
        ));
  }
}
