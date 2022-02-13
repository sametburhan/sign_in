import 'package:flutter/material.dart';
import 'package:signin_page/constants/constant_color.dart';

class SecondPage extends StatefulWidget {
  const SecondPage();

  @override
  State<SecondPage> createState() => _SecondPage();
}

class _SecondPage extends State<SecondPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: whitecolor,
      body: Container(
        height: 100,
        width: 50,
        decoration: BoxDecoration(color: pinkcolor),
      ),
    );
  }
}
