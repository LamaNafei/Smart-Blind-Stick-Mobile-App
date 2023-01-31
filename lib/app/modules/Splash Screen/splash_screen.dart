import 'package:application/app/modules/Splash%20Screen/splash_screen_controllor.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
        init: SplashScreenController(),
        builder: (_) {
          return Scaffold(
                backgroundColor: const Color(0xff4F7D67),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/blindness1.png',
                        height: 100,
                        width: 100,
                      ),
                      const Text(
                        'Smart Blind Stick App',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
          );
        });
  }
}