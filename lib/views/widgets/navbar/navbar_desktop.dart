// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textfonts = TextStyle(
        fontStyle: FontStyle.normal, fontSize: 14, fontWeight: FontWeight.w600);

    final _navfonts = TextStyle(
        fontStyle: FontStyle.normal, fontSize: 12, fontWeight: FontWeight.w500);

    final _navbuttonfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w700);
    return Container(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
      height: 80,
      child: Flexible(
        flex: 1,
        fit: FlexFit.loose,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                NavBarLogo(),
                SizedBox(
                  width: 50,
                ),
                NavBarItem(title: 'Documentation'),
                SizedBox(width: 20),
                NavBarItem(title: 'Pricing'),
                SizedBox(width: 20),
                NavBarItem(title: 'Resources'),
                SizedBox(width: 20),
                NavBarItem(title: 'Blog'),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
              child: Flexible(
                child: Row(
                  children: [
                    TextButton(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          'Get early access',
                          style: _navbuttonfonts,
                        ),
                      ),
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
