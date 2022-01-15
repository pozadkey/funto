// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _headerfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w500);

    return Row(
      children: [
        Icon(Icons.connect_without_contact_rounded),
        SizedBox(width: 10),
        SelectableText(
          'Funto',
          style: _headerfonts,
        ),
      ],
    );
  }
}
