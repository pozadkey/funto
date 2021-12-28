// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:funto_landing_page/views/widgets/home/image_item.dart';
import 'package:funto_landing_page/views/widgets/home/next_icon.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/left_details.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(50, 100, 50, 50),
      child: SingleChildScrollView(
        child: Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LeftDetails(),
              Flexible(flex: 1, fit: FlexFit.loose, child: ImageItem()),
              NextIcon()
            ],
          ),
        ),
      ),
    );
  }
}
