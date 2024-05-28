import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/screen1.jpg",
              fit: BoxFit.cover,
            )),
        Positioned(
          bottom: 20,
          right: 40,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              surfaceTintColor: Colors.white,
              backgroundColor: Colors.black,
              fixedSize: Size(200, 40),
              foregroundColor: Colors.white
            ),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
            },
            child: const Text("Get Started"),
          ),
        ),
      ],
    );
  }
}
