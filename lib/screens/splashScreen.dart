// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:the_social/constants/ConstantColors.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  ConstantColors constantColors = ConstantColors();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantColors.darkColor,
      body: Center(
        child: RichText(
            text: TextSpan(
          text: "The",
          style: TextStyle(fontFamily: 'cursive'),
        )),
      ),
    );
  }
}
