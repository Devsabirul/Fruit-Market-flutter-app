import 'package:flutter/material.dart';
import 'package:fruitmarket/view/widgets/onboard_content.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xffF5F5F5),
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return OnboardingContent();
  }
}
