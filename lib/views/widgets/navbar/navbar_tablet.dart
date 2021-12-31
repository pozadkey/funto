// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:funto_landing_page/views/widgets/navbar/navbar_logo.dart';

import 'navbar_item.dart';

class NavBarTablet extends StatefulWidget {
  const NavBarTablet({Key? key}) : super(key: key);

  @override
  _NavBarTabletState createState() => _NavBarTabletState();
}

class _NavBarTabletState extends State<NavBarTablet> {
  final _navbuttonfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w700);

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
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    barrierColor: null,
                    context: context,
                    builder: (BuildContext context) {
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
                                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                              NavBarItem(
                                title: 'Documentation',
                              ),
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Text(
                                        'Get early access',
                                        style: _navbuttonfonts,
                                      ),
                                    ),
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              icon: Icon(Icons.menu_rounded),
              iconSize: 40,
            )
          ],
        ));
  }
}
