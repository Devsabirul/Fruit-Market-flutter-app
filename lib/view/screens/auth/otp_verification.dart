import 'package:flutter/material.dart';
import 'package:fruitmarket/constants.dart';
import 'package:fruitmarket/view/screens/auth/profile_info_add.dart';
import 'package:get/get.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SizedBox(
              height: Get.height * 0.8,
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.1,
                  ),
                  const Text(
                    "Enter The 4 digit code that was",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Color(0xff0C0B0B),
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    "send to your Mobile Number",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Color(0xff0C0B0B),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  VerificationCode(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                    keyboardType: TextInputType.number,
                    underlineColor: Colors.grey,
                    length: 4,
                    margin: const EdgeInsets.all(12),
                    cursorColor: Colors.black,
                    onCompleted: (String value) {},
                    onEditing: (bool value) {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(Get.width, 52),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Get.off(const ProfileInfoAddScreen(),
                          transition: Transition.rightToLeft);
                    },
                    child: const Text(
                      "VERIFY",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        "Resend Again?",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          color: Color(0xff7089F0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
