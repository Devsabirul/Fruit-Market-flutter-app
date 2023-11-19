import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruitmarket/view/screens/auth/otp_verification.dart';
import 'package:get/get.dart';

class VerifyScreenAlert extends StatefulWidget {
  const VerifyScreenAlert({super.key});

  @override
  State<VerifyScreenAlert> createState() => _VerifyScreenAlertState();
}

class _VerifyScreenAlertState extends State<VerifyScreenAlert> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.off(const OtpVerificationScreen(),
          transition: Transition.rightToLeft);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.height * 0.1,
                ),
                SizedBox(
                  child: Image.asset("assets/images/done.png"),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Verification Code Send on",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xff0C0B0B),
                    fontSize: 14,
                  ),
                ),
                const Text(
                  "your Registered Mobile Number",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xff0C0B0B),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
