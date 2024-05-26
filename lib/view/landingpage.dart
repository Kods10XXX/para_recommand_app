import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login_page.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      curve: Curves.easeIn,
      splash: Image.asset("assets/images/splach.gif"),
      nextScreen:  LoginPage(),
      splashIconSize: 400,
      animationDuration: const Duration(seconds: 5),
      backgroundColor: const Color(0xff22292f),

    );
  }
}
