// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:funto_landing_page/views/widgets/home/image_item.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/bottom_text.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/call_to_action.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/header.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/inputField.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/sub_header.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(120, 80, 120, 30),
      child: Column(
        children: [
          Header(),
          Container(alignment: Alignment.center, child: SubHeader()),
          ImageItem(),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.circle,
                  size: 60,
                ),
                Center(
                    child: Icon(
                  Icons.navigate_next_rounded,
                  color: Colors.black,
                  size: 60,
                ))
              ],
            ),
          ),
          Container(
            width: 500,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: InputField(),
          ),
          Container(
              width: 500,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: CallToAction()),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottomText(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.twitter),
                  iconSize: 25,
                  color: Colors.grey[400],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.github),
                  iconSize: 25,
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
