// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 12,
      color: Colors.grey[200],
      fontWeight: FontWeight.w400);

  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    String formattedDate = DateFormat('y').format(now);

    return Center(
      child: Container(
        color: Color.fromARGB(251, 79, 17, 94),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: width <= 1000
                  ? EdgeInsets.fromLTRB(20, 20, 20, 20)
                  : EdgeInsets.fromLTRB(200, 20, 200, 20),
              width: 2000,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '© Funto - $formattedDate. All rights reserved.',
                    style: _footerFont,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
