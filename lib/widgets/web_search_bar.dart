import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: dividerColor,
        )),
      ),
      child: TextField(
        cursorColor: tabColor,
        decoration: InputDecoration(
            prefixIconColor: tabColor,
            focusColor: tabColor,
            contentPadding: const EdgeInsets.all(15),
            prefixIcon: const Icon(Icons.search),
            fillColor: searchBarColor,
            filled: true,
            hintText: "Search...",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
