import 'package:flutter/material.dart';
import 'package:flutter_login_app/pages/home_page.dart';
import 'package:flutter_login_app/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 아래의 build(MaterialApp)는 딱 1번만 실행되어, 저장 시 re-load가 되지 않기 때문에 직접 껐다가 켜야한다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildThemeData(),
      initialRoute: "/login", // 앱의 첫 페이지
      routes: {
        // 페이지가 2개 이상일 때
        // 이동 시 아래의 String에 따라 이동한다.
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }

  // button을 theme로 만든다. 호출만 하면 어디서든 사용할 수 있다.
  ThemeData buildThemeData() {
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          // 해당 TextButton의 기존 디자인을 조금 수정하는 것
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          minimumSize: Size(double.infinity, 60),
        ),
      ),
    );
  }
}
