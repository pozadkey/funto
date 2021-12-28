// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/bottom_text.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/call_to_action.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/header.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/inputField.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/sub_header.dart';

class LeftDetails extends StatefulWidget {
  const LeftDetails({Key? key}) : super(key: key);

  @override
  _LeftDetailsState createState() => _LeftDetailsState();
}

class _LeftDetailsState extends State<LeftDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          SubHeader(),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: Row(
              children: [
                Container(width: 190, child: InputField()),
                SizedBox(
                  width: 10,
                ),
                CallToAction()
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 80, 0, 10),
            child: Row(
              children: [
                BottomText(),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.twitter),
                  iconSize: 25,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 20,
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
