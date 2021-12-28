// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NextIcon extends StatelessWidget {
  const NextIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          Icons.circle,
          size: 40,
        ),
        Center(
            child: Icon(
          Icons.navigate_next_rounded,
          color: Colors.black,
          size: 40,
        ))
      ],
    );
  }
}
