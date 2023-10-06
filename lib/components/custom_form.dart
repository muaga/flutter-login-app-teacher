import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/custom_text_form_field.dart';
import 'package:flutter_login_app/size.dart';
import 'package:flutter_login_app/user_repository.dart';
import 'package:flutter_login_app/validator_util.dart';

class CustomForm extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
// GlobalKey<FormState> = var = final : 전역키(변동없으니까 fianl 선언한다)

  final _email = TextEditingController();
  final _password = TextEditingController();

  CustomForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey, // 유효성 검사 준비
      // input 데이터를 한방에 submit할 때 사용; 통신 전송
      // Form 태그 속 Button을 눌릴 때, validation 검사를 할 수 있다.
      child: Column(
        // 아래의 함수를 컴포넌트화 시키기 위해
        children: [
          CustomTextFormField(
              text: "Email", validate: validateEmail(), textController: _email),
          SizedBox(height: large_gap),
          CustomTextFormField(
              text: "Password",
              validate: validatePassword(),
              isPassword: true,
              textController: _password),
          SizedBox(height: large_gap),
          TextButton(
              onPressed: () {
                // formkey가 연결되지 않으면 currentState가 null이다.
                if (_formkey.currentState!.validate()) {
                  // validator가 null을 리턴하면 true가 된다.
                  UserRepository repo = UserRepository();
                  repo.login(_email.text.trim(), _password.text.trim());
                  // controller로 email,password 값을 전달
                  // .trim()을 통해 입력되는 공백값을 제거해서 전달
                  Navigator.pushNamed(context, "/home"); // 페이지 이동
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
