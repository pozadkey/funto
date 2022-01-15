// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Color notSelected = Colors.white;

class NavBarItems extends StatefulWidget {
  final String title;
  const NavBarItems({Key? key, required this.title}) : super(key: key);

  @override
  _NavBarItemsState createState() => _NavBarItemsState();
}

class _NavBarItemsState extends State<NavBarItems> {
  Color color = notSelected;
  @override
  Widget build(BuildContext context) {
    final _navfonts = TextStyle(
        fontStyle: FontStyle.normal, fontSize: 14, fontWeight: FontWeight.w500);
    return MouseRegion(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.yellow[600],
          onTap: () {},
          child: Container(
            height: 60.0,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              widget.title,
              style: _navfonts,
            ),
          ),
        ),
      ),
    );
  }
}
