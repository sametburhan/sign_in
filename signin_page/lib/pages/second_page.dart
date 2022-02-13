import 'package:flutter/material.dart';
import 'package:signin_page/constants/constant_color.dart';
import 'package:signin_page/main.dart';

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
      body: Stack(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                color: purplecolor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(155, 55),
                    bottomLeft: Radius.elliptical(155, 55))),
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        icon: Icon(
                          Icons.exit_to_app,
                          color: whitecolor,
                          size: 25,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: whitecolor,
                          size: 25,
                        )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: whitecolor,
                      radius: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/human.jpg"),
                        radius: 60,
                      )),
                ],
              ),
              SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 13, right: 13, bottom: 13),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("Sağlık durumum:",style: TextStyle(color: whitecolor,fontSize: 17,fontFamily: "Poppins Regular"),),
                            ),
                            Icon(Icons.expand_more,size: 25,color: whitecolor,)
                          ],
                        ),
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: softpurple,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 13, right: 13, bottom: 13),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: purplecolor,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
