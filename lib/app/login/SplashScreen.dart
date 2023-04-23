import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/app/home/HomePage.dart';
import 'package:myapp2/app/login/WelcomeScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // backgroundColor: Color.fromARGB(200, 12, 3, 42),
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset('assets/images/appicon.jpg')],
      ),
      nextScreen: WelcomeScreen(),
      // StreamBuilder<User?>(
      //     stream: FirebaseAuth.instance.authStateChanges(),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData) {
      //         return HomePage();
      //       } else {
      //         return WelcomeScreen();
      //       }
      //     }),
      splashIconSize: 1000,
      duration: 1500,
    );
  }
}
