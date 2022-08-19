// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavLogo extends StatefulWidget {
  final Color myColor;
  double iconsSize;
  double logoTextSize;

  NavLogo(
      {Key? key,
      required this.myColor,
      required this.iconsSize,
      required this.logoTextSize})
      : super(key: key);

  @override
  State<NavLogo> createState() => _NavLogoState();
}

class _NavLogoState extends State<NavLogo> {
  @override
  Widget build(BuildContext context) {
    final _logoFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: widget.logoTextSize,
        color: widget.myColor,
        fontWeight: FontWeight.w600);

    return MaterialButton(
      padding: EdgeInsets.zero,
      minWidth: 0,
      onPressed: () {
        Navigator.pushNamed(context, '/');
      },
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.plug,
            color: widget.myColor,
            size: widget.iconsSize,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Funto',
            style: _logoFont,
          ),
        ],
      ),
    );
  }
}
