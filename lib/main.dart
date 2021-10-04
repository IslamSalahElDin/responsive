import 'package:flutter/material.dart';
import 'responsive_desktop.dart';
import 'responsive_mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData().copyWith(scaffoldBackgroundColor: Colors.lightBlueAccent),
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: false,

      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.minWidth.toInt());
          if (constraints.minWidth.toInt() <= 510) return MobileScreen();
          return DesktopScreen();
        },
      ),
    );
  }
}
