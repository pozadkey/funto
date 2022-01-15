// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:funto_landing_page/views/widgets/home_details/home_desktop.dart';
import 'package:funto_landing_page/views/widgets/home_details/home_mobile.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({Key? key}) : super(key: key);

  @override
  _HomeDetailsState createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1000) {
        return HomeMobile();
      } else {
        return HomeDesktop();
      }
    });
    /* return ScreenTypeLayout(
      desktop: HomeDesktop(),
      mobile: HomeMobile(),
      tablet: HomeTablet(),
    );*/
  }
}
