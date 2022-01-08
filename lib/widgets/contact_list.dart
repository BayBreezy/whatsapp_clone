import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/screens/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, i) {
            var user = info[i];
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => MobileChatScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            NetworkImage(user["profilePic"].toString()),
                      ),
                      title: Text(
                        user["name"].toString(),
                        style: const TextStyle(fontSize: 17),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(user["message"].toString(),
                            style: const TextStyle(fontSize: 14)),
                      ),
                      trailing: Text(
                        user["time"].toString(),
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                //Divider
                const Divider(
                  color: dividerColor,
                  indent: 70,
                  endIndent: 10,
                )
              ],
            );
          }),
    );
  }
}
