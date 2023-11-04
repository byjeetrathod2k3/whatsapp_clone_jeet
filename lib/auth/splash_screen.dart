import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:whatsapp_clone_by_jeet/screens/mobilescreen.dart';

class splash_screen extends StatelessWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset('animation_lmsrmzzw.json'),
        splashIconSize: 250,
        backgroundColor: Colors.white,
        //pageTransitionType: PageTransitionType.leftToRightPop,
        nextScreen: mobileScreenLayout());
  }
}
