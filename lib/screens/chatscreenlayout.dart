import 'package:flutter/material.dart';
import 'package:whatsapp_clone_by_jeet/Supply/info.dart';
import 'package:whatsapp_clone_by_jeet/screens/mymessage.dart';
import 'package:whatsapp_clone_by_jeet/screens/sender_mymessage.dart';

class ChatScreenLayout extends StatelessWidget {
  const ChatScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessage(
            message: messages[index]['text'].toString(),
            dates: messages[index]['time'].toString(),
          );
        }
        return Sender_MyMessage(
          message: messages[index]['text'].toString(),
          dates: messages[index]['time'].toString(),
        );
      },
    );
  }
}
