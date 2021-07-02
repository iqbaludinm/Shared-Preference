import 'dart:async';
import 'package:flutter/material.dart';
import 'package:modul_4/main.dart';
import 'package:modul_4/screen/login.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const coding = 'assets/images/coding.png';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyLoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            coding,
            height: 130,
            width: 115,
          ),
          SizedBox(
            height: 15.0,
          ),
          SpinKitWave(
            size: 35.0,
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index.isEven ? Colors.green : mainColor),
              );
            },
          ),
        ],
      ),
    );
  }
}
