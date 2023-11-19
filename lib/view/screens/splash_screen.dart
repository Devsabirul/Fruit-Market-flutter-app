import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fruitmarket/constants.dart';
import 'package:fruitmarket/view/screens/main_screen.dart';
import 'package:get/get.dart';
import 'onboarding/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool is_logged_in = false;

  @override
  void initState() {
    getIsLoggedIn();
    super.initState();
    Timer(const Duration(seconds: 3), () {
      if (is_logged_in) {
        Get.off(const MainScreenView(), transition: Transition.rightToLeft);
      } else {
        Get.off(const OnboardingScreen(), transition: Transition.rightToLeft);
      }
    });
  }

  void getIsLoggedIn() async {
    var prefs = await SharedPreferences.getInstance();
    var loginValue = prefs.getBool('isLoggedIn');
    is_logged_in = loginValue ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Fruit Market",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 45,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/mix_fruit_png_11.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
