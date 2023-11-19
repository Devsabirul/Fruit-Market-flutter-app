import 'package:flutter/material.dart';
import 'package:fruitmarket/view/screens/auth/signup_screen.dart';
import 'package:get/get.dart';

class Onboardingcontroller extends GetxController {
  RxInt currentIndex = 0.obs;
  PageController pageController = PageController(initialPage: 0);

  // ignore: non_constant_identifier_names
  goto_next_page() {
    pageController.animateToPage(currentIndex.value + 1,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  getstarted() {
    Get.off(const SignUpScreen(), transition: Transition.rightToLeft);
  }
}
