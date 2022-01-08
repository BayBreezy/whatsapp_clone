import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class MyMessageCard extends StatelessWidget {
  const MyMessageCard({Key? key, required this.message, required this.date})
      : super(key: key);
  final String message;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(right: 20),
        child: Card(
            elevation: 2,
            color: messageColor,
            margin: EdgeInsets.only(bottom: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 26, top: 10),
                  child: Text(message),
                ),
                Positioned(
                    bottom: 2,
                    right: 10,
                    child: Row(
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
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
