// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:funto_landing_page/main.dart';
import 'package:funto_landing_page/views/widgets/navbar/navbar_logo.dart';

import 'navbar_item.dart';

class NavBarTablet extends StatefulWidget {
  const NavBarTablet({Key? key}) : super(key: key);

  @override
  _NavBarTabletState createState() => _NavBarTabletState();
}

class _NavBarTabletState extends State<NavBarTablet> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
        height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBarLogo(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu_rounded),
              iconSize: 40,
            )
          ],
        ));
  }
}
