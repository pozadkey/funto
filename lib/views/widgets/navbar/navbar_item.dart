// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  NavBarItem({Key? key, required this.title}) : super(key: key);

  final _navfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 12, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Text(
        title,
        style: _navfonts,
      ),
    );
  }
}
