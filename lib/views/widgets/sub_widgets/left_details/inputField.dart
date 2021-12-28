// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = FocusNode();
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.grey[900],
        filled: true,
        labelText: 'Your email',
        labelStyle: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: myFocusNode.hasFocus ? Colors.grey[500] : Colors.grey[500]),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide:
              BorderSide(style: BorderStyle.solid, color: Colors.yellow),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
