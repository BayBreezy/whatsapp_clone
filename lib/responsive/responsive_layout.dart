import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {Key? key, required this.mobileLayout, required this.webLayout})
      : super(key: key);
  final Widget mobileLayout;
  final Widget webLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        //Check if width is greater than  tablet size
        if (constraints.maxWidth > 980) {
          // Show web layout
          return webLayout;
        } else {
          // Show mobile layout
          return mobileLayout;
        }
      },
    );
  }
}
