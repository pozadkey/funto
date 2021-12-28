import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/content.png',
      height: 300,
      width: 400,
      fit: BoxFit.contain,
      colorBlendMode: BlendMode.darken,
    );
  }
}
