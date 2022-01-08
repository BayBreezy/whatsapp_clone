import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/message_card.dart';
import 'package:whatsapp_clone/widgets/my_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      shrinkWrap: true,
      itemBuilder: (ctx, i) {
        var message = messages[i];
        if (message["isMe"] == true) {
          //Return MyMessage
          return MyMessageCard(
              message: message["text"].toString(),
              date: message["time"].toString());
        }
        //Retrun MessageCard
        return MessageCard(
            message: message["text"].toString(),
            date: message["time"].toString());
      },
    );
  }
}
