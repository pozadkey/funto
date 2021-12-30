// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  NavBarItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final _navfonts = TextStyle(
          fontStyle: FontStyle.normal,
          fontSize:
              sizingInformation.deviceScreenType == DeviceScreenType.tablet
                  ? 14
                  : 12,
          fontWeight: FontWeight.w500);
      return Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Text(
          title,
          style: _navfonts,
        ),
      );
    });
  }
}
