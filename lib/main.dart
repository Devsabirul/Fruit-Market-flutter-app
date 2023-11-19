import 'package:flutter/material.dart';
import 'package:fruitmarket/view/screens/auth/login_screen.dart';
import 'package:fruitmarket/view/screens/auth/otp_verification.dart';
import 'package:fruitmarket/view/screens/auth/verify_screen.dart';
import 'package:fruitmarket/view/screens/auth/signup_screen.dart';
import 'package:fruitmarket/view/screens/auth/profile_info_add.dart';
import 'package:fruitmarket/view/screens/main_screen.dart';
import 'package:fruitmarket/view/screens/onboarding/onboarding_screen.dart';
import 'package:fruitmarket/view/screens/splash_screen.dart';
import 'package:fruitmarket/view/screens/myorder.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fruit Market",
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "/welcome-screen": (context) => const OnboardingScreen(),
        "/signup-screen": (context) => const SignUpScreen(),
        "/login-screen": (context) => const LoginScreen(),
        "/verify-screen-alert": (context) => const VerifyScreenAlert(),
        "/otp-screen": (context) => const OtpVerificationScreen(),
        "/add-profile-info": (context) => const ProfileInfoAddScreen(),
        "/homescreen": (context) => const MainScreenView(),
        "/my-order": (context) => const MyOrderview(),
      },
    );
  }
}
