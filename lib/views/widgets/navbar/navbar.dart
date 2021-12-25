// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:funto_landing_page/main.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 14, fontWeight: FontWeight.w600);

  final _headerfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  final _navfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 12, fontWeight: FontWeight.w500);

  final _navbuttonfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.connect_without_contact_rounded),
              SizedBox(width: 10),
              Text(
                'Funto',
                style: _headerfonts,
              ),
            ],
          ),
          SizedBox(
            width: 30,
          ),
          _NavBarItem(title: 'Documentation'),
          _NavBarItem(title: 'Pricing'),
          _NavBarItem(title: 'Resources'),
          _NavBarItem(title: 'Blog'),
          Padding(
            padding: EdgeInsets.fromLTRB(500, 0, 0, 0),
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
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  _NavBarItem({Key? key, required this.title}) : super(key: key);

  final _navfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 12, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Text(
        title,
        style: _navfonts,
      ),
    );
  }
}
