import 'package:flutter/material.dart';
import 'package:modul_4/splashscreen.dart';

Color mainColor = Color(0xFFFF5B16);
Color darkColor = Color(0xFF000000);
Color lightColor = Color(0xFFFDFCFA);
Color firstColor = Color(0xFF3B5998);
Color secondaryColor = Color(0xFF264994);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'i-Lab',
      theme: ThemeData(
        primaryColor: mainColor,
      ),
      home: SplashScreen(),
    );
  }
}
