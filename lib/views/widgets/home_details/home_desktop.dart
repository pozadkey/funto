// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:funto_landing_page/views/widgets/image_item.dart';
import 'package:funto_landing_page/views/widgets/next_icon.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/left_details.dart';

import '../next_icon.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(150, 100, 150, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [LeftDetails(), Expanded(child: ImageItem()), NextIcon()],
      ),
    );
  }
}
