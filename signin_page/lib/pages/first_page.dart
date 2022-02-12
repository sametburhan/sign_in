import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:signin_page/constants/constant_color.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:signin_page/pages/first_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage();

  @override
  State<FirstPage> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: purplecolor,
      body: Stack(
        children: [
          Positioned(
            child: Image.asset("assets/images/girl.png", scale: 1.7),
            right: 0,
            top: 125,
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/human.jpg"),
                      maxRadius: 20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.message_sharp,
                          color: whitecolor,
                          size: 25,
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: blackcolor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Doktor bul",
                            prefixIcon: Icon(
                              Icons.search,
                              color: whitecolor,
                            ),
                            hintStyle: TextStyle(
                                color: whitecolor,
                                fontFamily: "Poppins Light",
                                fontSize: 15),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Merhaba",
                      style: TextStyle(
                          color: whitecolor,
                          fontSize: 17,
                          fontFamily: "Poppins Regular"),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Sağlıklı günler",
                      style: TextStyle(
                          color: whitecolor,
                          fontSize: 22,
                          fontFamily: "Poppins Regular"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Flexible(
                  child: Container(
                child: null,
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: whitecolor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
