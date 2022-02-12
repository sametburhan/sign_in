import 'constants/constant_color.dart';
import 'package:flutter/material.dart';
import 'pages/main_page.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isVisible = true;
  double heightValue = 350;
  String giris = "Giriş";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    "assets/images/giris.png",
                  ),
                  top: -150,
                  left: 0,
                  right: 0,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 45,
                    ),
                    Visibility(
                      visible: !isVisible,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: backHeight,
                            icon: Icon(Icons.arrow_back_ios_rounded),
                            iconSize: 22,
                            color: whitecolor,
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Biyometrik giriş ekle",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: whitecolor,
                                      fontFamily: "Poppins Regular"),
                                ),
                                style: ButtonStyle(
                                    overlayColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black.withOpacity(0))),
                              ),
                              Text("|",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: whitecolor,
                                      fontFamily: "Poppins Thin")),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.fingerprint),
                                iconSize: 22,
                                color: whitecolor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(30), //her yöne olan uzaklık
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Sağlıklı",
                                      style: TextStyle(
                                          color: whitecolor,
                                          fontSize: 25,
                                          fontFamily:
                                              "Poppins ExtraBoldItalic"),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset(
                                      "assets/images/heart.png",
                                      scale: 1.5,
                                    )
                                  ],
                                ),
                                Text(
                                  "Kal",
                                  style: TextStyle(
                                      color: whitecolor,
                                      fontSize: 17,
                                      fontFamily: "Poppins ExtraBoldItalic"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(44),
                                color: whitecolor,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                  )
                                ]),
                            height: heightValue,
                            child: contents(),
                          ),
                          Visibility(
                            visible: isVisible,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  const Text(
                                    "Hesabın yokmu?",
                                    style: TextStyle(
                                        color: pinkcolor,
                                        fontFamily: "Poppins Light",
                                        fontSize: 14),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Hemen yeni bir tane",
                                        style: TextStyle(
                                            color: pinkcolor,
                                            fontFamily: "Poppins Light",
                                            fontSize: 15),
                                      ),
                                      TextButton(
                                          //onPressed: () => {equalThedata()},
                                          onPressed: equalThedata,
                                          child: Text(
                                            "Oluştur",
                                            style: TextStyle(
                                                color: purplecolor,
                                                fontFamily: "Poppins Light",
                                                fontSize: 15),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // ),
        ),
      ),
      backgroundColor: whitecolor,
    );
  }

  bool _textobscure = true;
  Widget contents() {
    bool value = false;
    bool check = false;

    String _password;
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: !isVisible,
            child: Container(
              padding: const EdgeInsets.only(top: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: whitecolor,
                border: Border.all(
                  color: softblack,
                  width: 0.5,
                ),
              ),
              width: double.infinity,
              height: 55,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: purplecolor,
                    ),
                    hintText: "Kullanıcı adı",
                    hintStyle: TextStyle(
                        color: softblack,
                        fontFamily: "Poppins Light",
                        fontSize: 15),
                    border: InputBorder.none),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: whitecolor,
              border: Border.all(
                color: softblack,
                width: 0.5,
              ),
            ),
            width: double.infinity,
            height: 55,
            child: TextFormField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail,
                    color: purplecolor,
                  ),
                  hintText: "E-posta",
                  hintStyle: TextStyle(
                      color: softblack,
                      fontFamily: "Poppins Light",
                      fontSize: 15),
                  border: InputBorder.none),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: whitecolor,
              border: Border.all(
                color: softblack,
                width: 0.5,
              ),
            ),
            width: double.infinity,
            height: 55,
            child: Row(
              //alignment: Alignment.centerRight,
              children: [
                Flexible(
                  child: TextFormField(
                    autofocus: true,
                    // validator: (){},
                    obscureText: _textobscure, //şifre gizler
                    decoration: const InputDecoration(
                        hintText: "Şifre",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: purplecolor,
                        ),
                        hintStyle: TextStyle(
                            color: softblack,
                            fontFamily: "Poppins Light",
                            fontSize: 15),
                        border: InputBorder.none),
                  ),
                ),
                IconButton(
                    onPressed: _toggle,
                    icon: Icon(
                      _visib,
                      color: softblack,
                    )),
              ],
            ),
          ),
          Visibility(
            visible: !isVisible,
            child: Container(
              padding: const EdgeInsets.only(top: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: whitecolor,
                border: Border.all(
                  color: softblack,
                  width: 0.5,
                ),
              ),
              width: double.infinity,
              height: 55,
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      autofocus: true,
                      // validator: (){},
                      obscureText: _textobscure, //şifre gizler
                      decoration: const InputDecoration(
                          hintText: "Şifre tekrar",
                          prefixIcon: Icon(
                            Icons.lock,
                            color: purplecolor,
                          ),
                          hintStyle: TextStyle(
                              color: softblack,
                              fontFamily: "Poppins Light",
                              fontSize: 15),
                          border: InputBorder.none),
                    ),
                  ),
                  IconButton(
                    onPressed: _toggle,
                    icon: Icon(_visib),
                    color: softblack,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 55,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              child: Text(
                giris,
                style: TextStyle(fontSize: 17, fontFamily: "Poppins Medium"),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // <-- Radius
                ),
                primary: purplecolor,
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: value,
                checkColor: pinkcolor,
                activeColor: purplecolor,
                onChanged: (check) {
                  setState(() {
                    value = check!; //const kaldırmaya çalış
                    /*  if (value == true) {
                      
                  }*/
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const Text(
                "Beni hatırla",
                style: TextStyle(
                    fontFamily: "Poppins Light",
                    fontSize: 15,
                    color: softblack),
              )
            ],
          ),
          Visibility(
            visible: isVisible,
            child: TextButton(
              onPressed: null,
              child: const Text("Şifreni mi unuttun?",
                  style: TextStyle(
                      fontFamily: "Poppins Light",
                      fontSize: 14,
                      color: blackcolor)),
            ),
          ),
        ],
      ),
    );
  }

  void backHeight() {
    setState(() {
      heightValue = 350;
      isVisible = !isVisible;

      giris = "Giriş";
    });
  }

  void equalThedata() {
    setState(() {
      isVisible = !isVisible;
      heightValue = 450;
      giris = "Hesap Oluştur";
    });
  }

  IconData _visib = Icons.visibility_off;

  void _toggle() {
    setState(() {
      _textobscure = !_textobscure;
      if (_textobscure == true) {
        _visib = Icons.visibility_off;
      } else if (_textobscure == false) {
        _visib = Icons.visibility;
      }
    });
  }
}
