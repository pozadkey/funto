// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({Key? key}) : super(key: key);

  @override
  _HomeDetailsState createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  final gradient = LinearGradient(
    colors: [Colors.white, Colors.yellow],
  );

  final _contentfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 60, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Padding(
        padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LeftDetails(),
            Image.asset(
              'assets/images/content.png',
              height: 400,
              width: 400,
              fit: BoxFit.fitWidth,
              colorBlendMode: BlendMode.darken,
            ),
            Stack(
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
            )
          ],
        ),
      )),
    );
  }
}
