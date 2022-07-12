import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chat_input.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';
import 'package:whatsapp_clone/widgets/profile_bar.dart';
import 'package:whatsapp_clone/widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/widgets/web_search_bar.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                //Web profile bar
                WebProfileBar(),
                //Web search bar
                WebSearchBar(),
                //Contact List
                ContactsList(),
              ],
            ),
          ),
        ),
        //Chat area
        Expanded(
          flex: 3,
          child: Container(
            // width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/2033997/pexels-photo-2033997.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: const [
                ProfileBar(),
                Expanded(child: ChatList()),
                ChatInput()
              ],
            ),
          ),
        )
      ],
    ));
  }
}
