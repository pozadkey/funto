// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:funto_landing_page/views/widgets/home/image_item.dart';
import 'package:funto_landing_page/views/widgets/home/next_icon.dart';
import 'package:funto_landing_page/views/widgets/home_details/home_desktop.dart';
import 'package:funto_landing_page/views/widgets/home_details/home_mobile.dart';
import 'package:funto_landing_page/views/widgets/home_details/home_tablet.dart';
import 'package:funto_landing_page/views/widgets/sub_widgets/left_details/left_details.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({Key? key}) : super(key: key);

  @override
  _HomeDetailsState createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: HomeDesktop(),
      mobile: HomeMobile(),
      tablet: HomeTablet(),
    );
  }
}
