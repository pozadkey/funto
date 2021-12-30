// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:funto_landing_page/views/widgets/navbar/navbar_item.dart';
import 'package:funto_landing_page/views/widgets/navbar/navbar_logo.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _navbuttonfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w700);

    return Dialog(
      insetPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.rectangle,
        ),
        child: Column(
          children: [
            Container(
              height: 80,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavBarLogo(),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.cancel),
                    iconSize: 30,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            NavBarItem(title: 'Documentation'),
            SizedBox(
              height: 40,
            ),
            NavBarItem(title: 'Pricing'),
            SizedBox(
              height: 40,
            ),
            NavBarItem(title: 'Resources'),
            SizedBox(
              height: 40,
            ),
            NavBarItem(title: 'Blog'),
            SizedBox(
              height: 40,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
            )
          ],
        ),
      ),
    );
  }
}
