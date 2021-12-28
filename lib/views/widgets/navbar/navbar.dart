// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:funto_landing_page/views/widgets/navbar/navbar_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navbar_mobile.dart';
import 'navbar_tablet.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      tablet: NavBarTablet(),
      desktop: NavBarDesktop(),
    );
  }
}
