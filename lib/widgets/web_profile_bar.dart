import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: webAppBarColor,
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 27,
            backgroundColor: tabColor,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
              ),
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat, color: Colors.grey)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.grey)),
        ],
      ),
    );
  }
}
