// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:funto_landing_page/views/widgets/navbar/navbar_button.dart';
import 'package:funto_landing_page/views/widgets/navbar/navbar_cta_button.dart';
import 'package:funto_landing_page/views/widgets/navbar/navbar_logo.dart';
import 'navbar_items.dart';

double collapsableHeight = 0.0;
Color selectedColor = Colors.yellow;
Color notSelected = Colors.white;
IconData myMenu = Icons.menu_rounded;

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        AnimatedContainer(
          margin: EdgeInsets.only(top: 79.0),
          duration: Duration(milliseconds: 375),
          curve: Curves.ease,
          height: (width < 1000.0) ? collapsableHeight : 0.0,
          width: double.infinity,
          color: Colors.black,
          child: Column(children: [
            Expanded(child: NavBarItems(title: 'Documentation')),
            Expanded(child: NavBarItems(title: 'Pricing')),
            Expanded(child: NavBarItems(title: 'Resources')),
            Expanded(child: NavBarItems(title: 'Blog')),
            Expanded(child: NavBarCTAButton())
          ]),
        ),
        Container(
          color: Colors.black,
          height: 80.0,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarLogo(),
              LayoutBuilder(builder: (context, constraints) {
                if (width < 1000.0) {
                  return NavBarButton(
                    onPressed: () {
                      if (collapsableHeight == 0.0) {
                        setState(() {
                          collapsableHeight = 310.0;
                          myMenu = Icons.cancel_presentation_sharp;
                        });
                      } else if (collapsableHeight == 310.0) {
                        setState(() {
                          collapsableHeight = 0.0;
                          myMenu = Icons.menu_rounded;
                        });
                      }
                    },
                  );
                } else {
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NavBarItems(title: 'Documentation'),
                        NavBarItems(title: 'Pricing'),
                        NavBarItems(title: 'Resources'),
                        NavBarItems(title: 'Blog'),
                        SizedBox(
                          width: 20,
                        ),
                        NavBarCTAButton()
                      ]);
                }
              })
            ],
          ),
        )
      ],
    );
  }
}
