import 'package:flutter/material.dart';
import 'package:fruitmarket/constants.dart';
import 'package:fruitmarket/view/screens/auth/verify_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: Get.width,
            height: Get.height * 0.9,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    style: const TextStyle(
                      color: Color(0xff2E2E2E),
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "+880 192*******",
                      hintStyle: const TextStyle(
                        color: Color(0xff2E2E2E),
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
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
                      Get.to(const VerifyScreenAlert(),
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
