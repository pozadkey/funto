// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  const BottomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textfonts = TextStyle(
        fontStyle: FontStyle.normal, fontSize: 14, fontWeight: FontWeight.w500);

    return Text(
      'Integrations',
      style: _textfonts,
    );
  }
}
