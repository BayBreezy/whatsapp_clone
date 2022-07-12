import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({Key? key, required this.message, required this.date})
      : super(key: key);
  final String message;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Card(
            elevation: 2,
            color: senderMessageColor,
            margin: const EdgeInsets.only(bottom: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 26, top: 10),
                  child: Text(message),
                ),
                Positioned(
                    bottom: 2,
                    left: 10,
                    child: Row(
                      children: [
                        Text(
                          date,
                          style: const TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.check,
                          size: 14,
                        )
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}
