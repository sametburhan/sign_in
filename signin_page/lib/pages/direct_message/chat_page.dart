// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:signin_page/constants/constant_color.dart';
import 'package:signin_page/constants/user_model.dart';

class ChatPage extends StatelessWidget {
  int userIndex;
  ChatPage(this.userIndex, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyUser selectedUser = listOfUser[userIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: purplecolor,
        centerTitle: false,
        title: buildAppBarText(selectedUser),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }

  Widget buildAppBarText(MyUser selectedUser) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage:
              AssetImage("assets/profiles/${selectedUser.profilePhoto}"),
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          selectedUser.name,
          style: TextStyle(fontFamily: "Poppins Regular"),
        ),
      ],
    );
  }
}
