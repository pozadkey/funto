// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

class LinksIcon extends StatefulWidget {
  String title;
  IconData footerIcon;
  Color initialColor;
  Color hoverColorIn;
  Color hoverColorOut;
  final Function onPressed;

  LinksIcon({
    Key? key,
    required this.title,
    required this.footerIcon,
    required this.initialColor,
    required this.hoverColorIn,
    required this.hoverColorOut,
    required this.onPressed,
  }) : super(key: key);

  @override
  _LinksIconState createState() => _LinksIconState();
}

class _LinksIconState extends State<LinksIcon> {
  @override
  Widget build(BuildContext context) {
    final _footerFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 12,
        color: widget.initialColor,
        fontWeight: FontWeight.w400);

    return MouseRegion(
        onEnter: (m) {
          setState(() {
            widget.initialColor = widget.hoverColorIn;
          });
        },
        onExit: (m) {
          setState(() {
            widget.initialColor = widget.hoverColorOut;
          });
        },
        child: MaterialButton(
          padding: EdgeInsets.zero,
          minWidth: 0,
          onPressed: () {
            widget.onPressed();
          },
          child: Row(
            children: [
              Icon(
                widget.footerIcon,
                color: widget.initialColor,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                widget.title,
                style: _footerFont,
              ),
            ],
          ),
        ));
  }
}
