import 'package:flutter/material.dart';

import '../colors.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
        color: chatBarMessage,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: TextField(
              cursorColor: tabColor,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20),
                hintText: "type something. . .",
                fillColor: searchBarColor,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
