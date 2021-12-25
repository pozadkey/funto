// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'themes/themes.dart';
import 'views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Funto - Landing page',
              themeMode: ThemeMode.system,
              //themeMode: currentMode,
              theme: MyThemes.lightTheme,
              darkTheme: MyThemes.darkTheme,
              home: Home(),
              routes: <String, WidgetBuilder>{
                'student': (BuildContext context) => Home(),
              });
        });
  }
}
