// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final gradient = LinearGradient(
        colors: [Colors.white, Colors.yellow],
      );
      final _contentfonts = TextStyle(
          fontStyle: FontStyle.normal,
          fontSize:
              sizingInformation.deviceScreenType == DeviceScreenType.mobile
                  ? 40
                  : 60,
          fontWeight: FontWeight.w800);

      return ShaderMask(
        shaderCallback: (Rect bounds) {
          return gradient.createShader(Offset.zero & bounds.size);
        },
        child: Text('The platform for local-first software.',
            style: _contentfonts),
      );
    });
  }
}
