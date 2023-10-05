import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  String title;
  Logo(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      // column안에 넣어서 하나로 묶기 -> 재사용 가능한 위젯으로 빼기
      children: [
        SvgPicture.asset("assets/logo.svg", width: 70, height: 70),
        Text("${title}",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
