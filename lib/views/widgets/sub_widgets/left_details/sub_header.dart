// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final _content_sub_fonts = TextStyle(
          fontStyle: FontStyle.normal,
          fontSize:
              sizingInformation.deviceScreenType == DeviceScreenType.mobile
                  ? 14
                  : 16,
          fontWeight: FontWeight.w500,
          height: 2.0);

      return Text(
        'Don\'t write real-time APIs. Move yout data base to the browser. Funto keeps local data in sync so you can build fast and collaborative apps.',
        style: _content_sub_fonts,
      );
    });
  }
}
