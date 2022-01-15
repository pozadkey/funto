// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _contentfonts = TextStyle(
        fontStyle: FontStyle.normal,
        color: Colors.yellow[600],
        fontSize: 60,
        fontWeight: FontWeight.w800);

    final _contentfontsMobile = TextStyle(
        fontStyle: FontStyle.normal,
        color: Colors.yellow[600],
        fontSize: 40,
        fontWeight: FontWeight.w800);

    final _contentfontsMobile2 = TextStyle(
        fontStyle: FontStyle.normal,
        color: Colors.yellow[600],
        fontSize: 18,
        fontWeight: FontWeight.w800);

    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width > 671 && width < 1000) {
        return SelectableText('The platform for local-first software.',
            style: _contentfonts);
      } else if (width < 671) {
        return SelectableText('The platform for local-first software.',
            style: _contentfontsMobile);
      } else if (width < 290) {
        return SelectableText('The platform for local-first software.',
            style: _contentfontsMobile2);
      } else {
        return SelectableText('The platform for local-first software.',
            style: _contentfonts);
      }
    });
  }
}
