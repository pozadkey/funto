// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';

class LeftDetails extends StatefulWidget {
  const LeftDetails({Key? key}) : super(key: key);

  @override
  _LeftDetailsState createState() => _LeftDetailsState();
}

class _LeftDetailsState extends State<LeftDetails> {
  final gradient = LinearGradient(
    colors: [Colors.white, Colors.yellow],
  );

  final _contentfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 50, fontWeight: FontWeight.w800);

  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 14, fontWeight: FontWeight.w500);

  final _content_sub_fonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 2.0);

  final _buttonfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = FocusNode();
    return Container(
      width: 600,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return gradient.createShader(Offset.zero & bounds.size);
            },
            child: Text('The platform\nfor  local-first\nsoftware.',
                style: _contentfonts),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              'Don\'t write real-time APIs. Move yout data base\nto the browser. Funto keeps local data in sync so\nyou can build fast and collaborative apps.',
              style: _content_sub_fonts,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: Row(
              children: [
                Container(
                  width: 190,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[900],
                      filled: true,
                      labelText: 'Your email',
                      labelStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: myFocusNode.hasFocus
                              ? Colors.grey[500]
                              : Colors.grey[500]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.red,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(
                            style: BorderStyle.solid, color: Colors.yellow),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Get early access',
                      style: _buttonfonts,
                    ),
                  ),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green[500],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 70, 0, 10),
            child: Row(
              children: [
                Text(
                  'Integrations',
                  style: _textfonts,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
