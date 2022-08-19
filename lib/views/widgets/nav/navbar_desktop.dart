// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../buttons/primary_button.dart';
import 'navbar_items.dart';
import 'navbar_logo.dart';

class NavBarDesktop extends StatefulWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  State<NavBarDesktop> createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<NavBarDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      width: double.infinity,
      margin: EdgeInsets.all(0),
      child: Column(
        children: [
          Container(
            padding: width <= 1550
                ? EdgeInsets.fromLTRB(50, 15, 50, 15)
                : EdgeInsets.fromLTRB(200, 15, 200, 15),
            width: 2000,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavLogo(
                  myColor: Color.fromARGB(251, 79, 17, 94),
                  logoTextSize: 20,
                  iconsSize: 20,
                ),
                Row(children: [
                  NavBarItems(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    title: 'Documentation',
                    initialColor: Color.fromARGB(251, 79, 17, 94),
                    hoverColorIn: Color.fromARGB(255, 251, 214, 7),
                    hoverColorOut: Color.fromARGB(251, 79, 17, 94),
                  ),
                  NavBarItems(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    title: ' Pricing',
                    initialColor: Color.fromARGB(251, 79, 17, 94),
                    hoverColorIn: Color.fromARGB(255, 251, 214, 7),
                    hoverColorOut: Color.fromARGB(251, 79, 17, 94),
                  ),
                  NavBarItems(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    title: 'Resources',
                    initialColor: Color.fromARGB(251, 79, 17, 94),
                    hoverColorIn: Color.fromARGB(255, 251, 214, 7),
                    hoverColorOut: Color.fromARGB(251, 79, 17, 94),
                  ),
                  NavBarItems(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    title: 'Blog',
                    initialColor: Color.fromARGB(251, 79, 17, 94),
                    hoverColorIn: Color.fromARGB(255, 251, 214, 7),
                    hoverColorOut: Color.fromARGB(251, 79, 17, 94),
                  ),
                ]),
                Row(
                  children: [
                    PrimaryButton(
                      title: 'Get early access',
                      initalTextColor: Colors.white,
                      initialBgColor: Color.fromARGB(251, 79, 17, 94),
                      hoverInColor: Colors.white,
                      hoverInBgColor: Colors.black,
                      hoverOutColor: Colors.white,
                      hoverOutBgColor: Color.fromARGB(251, 79, 17, 94),
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
