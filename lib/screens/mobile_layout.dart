import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "WhatsApp Clone",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w200, fontSize: 20),
          ),
          elevation: 0,
          backgroundColor: appBarColor,
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 2,
            unselectedLabelColor: Colors.grey,
            labelColor: tabColor,
            tabs: [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        body: const ContactsList(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: tabColor,
          tooltip: "Start a new message",
          onPressed: () {},
          child: Icon(
            Icons.chat,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
