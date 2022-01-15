// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NavBarCTAButton extends StatefulWidget {
  const NavBarCTAButton({Key? key}) : super(key: key);

  @override
  _NavBarCTAButtonState createState() => _NavBarCTAButtonState();
}

class _NavBarCTAButtonState extends State<NavBarCTAButton> {
  final _navbuttonfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w700);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: SelectableText(
          'Get early access',
          style: _navbuttonfonts,
        ),
      ),
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
