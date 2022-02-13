import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:signin_page/constants/constant_color.dart';
import 'package:signin_page/pages/first_page.dart';
import 'package:signin_page/pages/second_page.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:signin_page/pages/map_page.dart';

class MainPage extends StatefulWidget {
  const MainPage();

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: getCurrentPage(),
      //  drawer: MyDrawerMenu(),
      bottomNavigationBar: buildBottomBar(),
    );
  }

  Widget buildBottomBar() {
    return DotNavigationBar(
      unselectedItemColor: softpurple,
      backgroundColor: purplecolor,
      dotIndicatorColor: whitecolor,
      paddingR: EdgeInsets.all(8),
      enableFloatingNavBar: true,
      currentIndex: _currentTab,
      curve: Curves.bounceOut,
      selectedItemColor: whitecolor,
      marginR: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
      /* boxShadow: [
        BoxShadow(color: softblack, blurRadius: 4, offset: Offset(1, 2))
      ],*/
      items: [
        DotNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: _iconsize1,
          ),
        ),
        DotNavigationBarItem(
          icon: Icon(Icons.map, size: _iconsize2),
        ),
        DotNavigationBarItem(
          icon: Icon(Icons.account_circle_sharp, size: _iconsize3),
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentTab = index;
          iconsSize(index);
        });
      },
    );
  }

  double _iconsize1 = 25;
  double _iconsize2 = 20;
  double _iconsize3 = 20;

  getCurrentPage() {
    if (_currentTab == 0) {
      return FirstPage();
    } else if (_currentTab == 1) {
      return MapPage();
    } else if (_currentTab == 2) {
      return SecondPage();
    }
  }

  void iconsSize(int value) {
    if (value == 0) {
      setState(() {
        _iconsize1 = 25;
        _iconsize2 = 20;
        _iconsize3 = 20;
      });
    } else if (value == 1) {
      setState(() {
        _iconsize2 = 25;
        _iconsize1 = 20;
        _iconsize3 = 20;
      });
    } else if (value == 2) {
      setState(() {
        _iconsize1 = 20;
        _iconsize3 = 25;
        _iconsize2 = 20;
      });
    }
  }
}
