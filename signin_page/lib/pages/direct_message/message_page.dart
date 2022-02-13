import 'package:flutter/material.dart';
import 'package:signin_page/constants/constant_color.dart';
import 'package:signin_page/constants/user_model.dart';
import 'package:signin_page/pages/direct_message/chat_page.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whitecolor,
        appBar: buildAppBar(),
        body: buildBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: purplecolor,
          onPressed: () {},
          child: Icon(Icons.message_rounded),
        ));
  }

  Widget buildBody() {
    return ListView.builder(
      itemCount: listOfUser.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: buildProfilePhoto(index),
          title: Text(
            listOfUser[index].name,
            style: TextStyle(fontFamily: "Poppins Regular"),
          ),
          subtitle: buildSubtitle(index),
          trailing: buildTrailing(index),
          onTap: () {
            setState(() {
              listOfUser[index].lastNumberOfMessage = 0;
            });
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChatPage(index)));
          },
        );
      },
    );
  }

  CircleAvatar buildProfilePhoto(int index) {
    return CircleAvatar(
      backgroundImage:
          AssetImage("assets/profiles/${listOfUser[index].profilePhoto}"),
    );
  }

  Widget buildSubtitle(int index) {
    return Row(
      children: [
        Visibility(
          visible: listOfUser[index].isChecked,
          child: Icon(
            Icons.check,
            size: 22,
            color: Colors.green,
          ),
        ),
        SizedBox(
          width: 2,
        ),
        Wrap(
          direction: Axis.horizontal,
          children: [
            Text(
              listOfUser[index].lastMessage,
              style: TextStyle(
                  fontFamily: "Poppins Regular",
                  fontSize: 14,
                  color: blackcolor.withOpacity(0.5)),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }

  Widget buildTrailing(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          listOfUser[index].lastMessageTime,
          style: TextStyle(
              fontSize: 14, color: blackcolor, fontFamily: "Poppins Light"),
        ),
        SizedBox(
          height: 1,
        ),
        Visibility(
          visible: listOfUser[index].lastNumberOfMessage != 0,
          child: Container(
            margin: EdgeInsets.only(top: 2),
            child: Center(
              child: Text(
                "${listOfUser[index].lastNumberOfMessage}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "Poppins Regular"),
              ),
            ),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.green[700]),
          ),
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: blackcolor,
      title: const Text(
        "Mesajlar",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "Poppins Regular", color: whitecolor),
      ),
    );
  }
}
