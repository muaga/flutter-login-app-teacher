import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/logo.dart';
import 'package:flutter_login_app/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Care Soft"),
            SizedBox(height: large_gap),
            TextButton(
                onPressed: () {
                  Navigator.pop(context); // 페이지 이동
                },
                child: Text("Get Started")),
          ],
        ),
      ),
    );
  }
}
