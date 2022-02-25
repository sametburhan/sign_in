import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:signin_page/constants/constant_color.dart';
import 'package:signin_page/pages/direct_message/message_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage();

  @override
  State<FirstPage> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  Widget build(BuildContext context) {
    var _screesize = MediaQuery.of(context).size;
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessagePage()));
                        },
                        icon: Icon(
                          Icons.message_sharp,
                          color: whitecolor,
                          size: 25,
                        )),
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
                        style: TextStyle(
                          color: whitecolor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
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
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 10,
                                        spreadRadius: 5,
                                      ),
                                    ],
                                    color: whitecolor,
                                    border: Border.all(
                                        color: purplecolor, width: 2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                height: 45,
                                width: 140,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Doktorum",
                                      style: TextStyle(
                                          color: purplecolor,
                                          fontSize: 15,
                                          fontFamily: "Poppins Regular"),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 10,
                                        spreadRadius: 5,
                                      ),
                                    ],
                                    color: purplecolor,
                                    border: Border.all(
                                        color: purplecolor, width: 2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                height: 45,
                                width: 140,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Diyetisyenim",
                                      style: TextStyle(
                                          color: whitecolor,
                                          fontSize: 15,
                                          fontFamily: "Poppins Regular"),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 10,
                                        spreadRadius: 5,
                                      ),
                                    ],
                                    color: purplecolor,
                                    border: Border.all(
                                        color: purplecolor, width: 2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                height: 45,
                                width: 140,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Psikoloğum",
                                      style: TextStyle(
                                          color: whitecolor,
                                          fontSize: 15,
                                          fontFamily: "Poppins Regular"),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 10,
                                        spreadRadius: 5,
                                      ),
                                    ],
                                    color: purplecolor,
                                    border: Border.all(
                                        color: purplecolor, width: 2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                height: 45,
                                width: 140,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Spor Koçum",
                                      style: TextStyle(
                                          color: whitecolor,
                                          fontSize: 15,
                                          fontFamily: "Poppins Regular"),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      _Content(),
                    ],
                  ),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: whitecolor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _Content() {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Column(
            children: [
              Image.asset(
                "assets/images/doktorum.png",
                scale: 3.7,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: softpurple,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
