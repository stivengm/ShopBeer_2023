import 'package:flutter/material.dart';
import 'package:shopbeer/gui/app_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Image(
          width: 215.0,
          image: AssetImage('assets/iOS_icon.png')
        ),
      ),
    );
  }
}