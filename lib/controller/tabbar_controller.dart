import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarControllers extends GetxController {
  RxInt initialIndex = 0.obs;
  RxInt tabLenght = 3.obs;

  List<String> tabs = [
    "Vegetables",
    "Fruits",
    "Dry Fruits"
  ];

  tabsAdd() {
    
  }
}
