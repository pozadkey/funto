// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _buttonfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.w500);

    return TextButton(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Get early access',
          style: _buttonfonts,
        ),
      ),
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.green[500],
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
