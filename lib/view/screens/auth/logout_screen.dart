import 'package:flutter/material.dart';
import 'package:fruitmarket/view/screens/auth/login_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogOutScreen extends StatefulWidget {
  const LogOutScreen({super.key});

  @override
  State<LogOutScreen> createState() => _LogOutScreenState();
}

class _LogOutScreenState extends State<LogOutScreen> {
  @override
  void initState() {
    logout();
    Get.off(const LoginScreen(), transition: Transition.leftToRight);
    super.initState();
  }

  void logout() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.remove('isLoggedIn');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
