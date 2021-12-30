// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:funto_landing_page/views/widgets/dialog_box/dialog_box.dart';

import 'navbar_logo.dart';

class NavBarMobile extends StatefulWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  _NavBarMobileState createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBarLogo(),
            IconButton(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    barrierColor: null,
                    context: context,
                    builder: (BuildContext context) {
                      return DialogBox();
                    });
              },
              icon: Icon(Icons.menu_rounded),
              iconSize: 30,
            )
          ],
        ));
  }
}
