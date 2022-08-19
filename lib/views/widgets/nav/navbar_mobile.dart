// ignore_for_file: prefer_const_constructors
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../buttons/primary_button.dart';
import '../buttons/navbar_button.dart';
import 'navbar_items.dart';
import 'navbar_logo.dart';

IconData myMenu = Icons.menu_rounded;
double collapsableHeight = 0.0;

class NavBarMobile extends StatefulWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  State<NavBarMobile> createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          padding: width <= 420
              ? EdgeInsets.fromLTRB(10, 15, 10, 15)
              : EdgeInsets.fromLTRB(20, 15, 20, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavLogo(
                myColor: Color.fromARGB(251, 79, 17, 94),
                logoTextSize: width <= 340 ? 15 : 18,
                iconsSize: width <= 340 ? 15 : 18,
              ),
              NavBarButton(
                hamburgerSize: width <= 340 ? 15 : 30,
                onPressed: () {
                  if (_isVisible == false) {
                    setState(() {
                      _isVisible = true;
                      myMenu = FontAwesomeIcons.xmark;
                    });
                  } else if (_isVisible == true) {
                    setState(() {
                      _isVisible = false;
                      myMenu = FontAwesomeIcons.bars;
                    });
                  }
                },
                hamburgerColor: _isVisible == false
                    ? Color.fromARGB(251, 79, 17, 94)
                    : Color.fromARGB(255, 255, 215, 39),
              )
            ],
          ),
        ),
        Visibility(
            visible: _isVisible,
            child: AnimatedContainer(
              color: Colors.white,
              padding: width <= 420
                  ? EdgeInsets.fromLTRB(20, 50, 20, 50)
                  : EdgeInsets.only(
                      top: 50.0,
                      bottom: 50.0,
                    ),
              duration: Duration(milliseconds: 375),
              curve: Curves.easeInOut,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavBarItems(
                      onPressed: () {
                        setState(() {
                          _isVisible = false;
                          myMenu = FontAwesomeIcons.bars;
                        });
                        Navigator.pushNamed(context, '/');
                      },
                      title: 'Documentation',
                      initialColor: Color.fromARGB(251, 79, 17, 94),
                      hoverColorIn: Color.fromARGB(255, 251, 214, 7),
                      hoverColorOut: Color.fromARGB(251, 79, 17, 94)),
                  SizedBox(
                    height: 20.0,
                  ),
                  NavBarItems(
                      onPressed: () {
                        setState(() {
                          _isVisible = false;
                          myMenu = FontAwesomeIcons.bars;
                        });
                        Navigator.pushNamed(context, '/');
                      },
                      title: 'Pricing',
                      initialColor: Color.fromARGB(251, 79, 17, 94),
                      hoverColorIn: Color.fromARGB(255, 251, 214, 7),
                      hoverColorOut: Color.fromARGB(251, 79, 17, 94)),
                  SizedBox(
                    height: 20.0,
                  ),
                  NavBarItems(
                      onPressed: () {
                        setState(() {
                          _isVisible = false;
                          myMenu = FontAwesomeIcons.bars;
                        });
                        Navigator.pushNamed(context, '/');
                      },
                      title: 'Resources',
                      initialColor: Color.fromARGB(251, 79, 17, 94),
                      hoverColorIn: Color.fromARGB(255, 251, 214, 7),
                      hoverColorOut: Color.fromARGB(251, 79, 17, 94)),
                  SizedBox(
                    height: 20.0,
                  ),
                  NavBarItems(
                      onPressed: () {
                        setState(() {
                          _isVisible = false;
                          myMenu = FontAwesomeIcons.bars;
                        });
                        Navigator.pushNamed(context, '/');
                      },
                      title: 'Blog',
                      initialColor: Color.fromARGB(251, 79, 17, 94),
                      hoverColorIn: Color.fromARGB(255, 251, 214, 7),
                      hoverColorOut: Color.fromARGB(251, 79, 17, 94)),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                      width: width <= 420 ? double.infinity : 200,
                      child: PrimaryButton(
                        title: 'Get early access ',
                        initalTextColor: Colors.white,
                        initialBgColor: Color.fromARGB(251, 79, 17, 94),
                        hoverInColor: Colors.white,
                        hoverInBgColor: Colors.black,
                        hoverOutColor: Colors.white,
                        hoverOutBgColor: Color.fromARGB(251, 79, 17, 94),
                        onPressed: () {
                          setState(() {
                            _isVisible = false;
                            myMenu = FontAwesomeIcons.bars;
                          });
                          Navigator.pushNamed(context, '/');
                        },
                      ))
                ],
              ),
            ))
      ],
    );
  }
}
