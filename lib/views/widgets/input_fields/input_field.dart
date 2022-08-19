// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _subHeaderFont = TextStyle(
        fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w400);

    final _labelFont = TextStyle(
        fontSize: 12, color: Colors.grey[400], fontWeight: FontWeight.w600);

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: TextFormField(
        style: _subHeaderFont,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          isDense: true,
          label: Text('Email'),
          labelStyle: _labelFont,
          hintText: 'Enter your email',
          hintStyle: _subHeaderFont,
          fillColor: Colors.grey[100],
          filled: true,
          contentPadding: width >= 800
              ? EdgeInsets.fromLTRB(10, 14, 0, 14)
              : EdgeInsets.fromLTRB(10, 11, 0, 11),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(251, 79, 17, 94),
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
