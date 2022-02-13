import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:signin_page/constants/constant_color.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "En yakın sağlık kuruluşları",
          style: TextStyle(color: whitecolor, fontFamily: "Poppins Regular"),
        ),
        backgroundColor: purplecolor,
      ),
      drawer: Drawer(),
      body: Stack(
        children: [
          Positioned(
            child: Image.asset("assets/images/harita.png"),
            left: 0,
            top: 0,
            bottom: 0,
          ),
        ],
      ),
      backgroundColor: whitecolor,
      extendBody: true,
    );
  }
}
