// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:funto_landing_page/views/widgets/image_item.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/bottom_text.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/call_to_action.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/header.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/inputField.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/sub_header.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _launchTwitter() async {
      const url = 'https://twitter.com/pozadkey';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    _launchGithub() async {
      const url = 'https://github.com/pozadkey';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Container(
      padding: EdgeInsets.fromLTRB(30, 80, 30, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Header(),
          SubHeader(),
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
            width: 400,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: InputField(),
          ),
          Container(
              width: 400,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: CallToAction()),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottomText(),
                IconButton(
                  onPressed: () {
                    _launchTwitter();
                  },
                  icon: Icon(FontAwesomeIcons.twitter),
                  iconSize: 25,
                  color: Colors.grey[400],
                ),
                IconButton(
                  onPressed: () {
                    _launchGithub();
                  },
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
