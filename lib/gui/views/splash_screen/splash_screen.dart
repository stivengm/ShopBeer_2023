import 'package:flutter/material.dart';
import 'package:shopbeer/gui/app_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super( key: key );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed( const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, 'login', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 215.0,
              image: AssetImage('assets/iOS_icon.png')
            ),
            const SizedBox(height: 30.0),
            CircularProgressIndicator(
              color: whiteColor,
            )
          ],
        ),
      ),
    );
  }
}