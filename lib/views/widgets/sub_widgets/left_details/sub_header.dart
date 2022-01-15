// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _content_sub_fonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 2.0);

    final _content_sub_fonts_Mobile = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 2.0);

    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width > 671 && width < 1000) {
        return SelectableText(
          'Don\'t write real-time APIs. Move yout data base to the browser. Funto keeps local data in sync so you can build fast and collaborative apps.',
          style: _content_sub_fonts,
        );
      } else if (width < 671) {
        return SelectableText(
          'Don\'t write real-time APIs. Move yout data base to the browser. Funto keeps local data in sync so you can build fast and collaborative apps.',
          style: _content_sub_fonts_Mobile,
        );
      } else {
        return SelectableText(
            'Don\'t write real-time APIs. Move yout data base to the browser. Funto keeps local data in sync so you can build fast and collaborative apps.',
            style: _content_sub_fonts);
      }
    });
  }
}
