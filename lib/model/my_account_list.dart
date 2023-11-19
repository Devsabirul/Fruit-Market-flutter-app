import 'package:flutter/material.dart';
import '../view/screens/myorder.dart';

class MyAccountnavList {
  String? title;
  String? icon;
  Widget? route;

  MyAccountnavList({this.title, this.icon, this.route});
}

List<MyAccountnavList> contents = [
  MyAccountnavList(
    title: "My Order",
    icon: "assets/images/icons/shoppingbag.png",
    route: MyOrderview(),
  ),
  MyAccountnavList(
    title: "Favourites",
    icon: "assets/images/icons/heart.png",
    route: MyOrderview(),
  ),
  MyAccountnavList(
    title: "Settings",
    icon: "assets/images/icons/settings.png",
    route: MyOrderview(),
  ),
  MyAccountnavList(
    title: "My Cart",
    icon: "assets/images/icons/shopping-cart.png",
    route: MyOrderview(),
  ),
  MyAccountnavList(
    title: "Rate Us",
    icon: "assets/images/icons/XMLID_2534_.png",
    route: MyOrderview(),
  ),
  MyAccountnavList(
    title: "Refer a Friend",
    icon: "assets/images/icons/share.png",
    route: MyOrderview(),
  ),
  MyAccountnavList(
    title: "Help",
    icon: "assets/images/icons/question.png",
    route: MyOrderview(),
  ),
  MyAccountnavList(
    title: "Log Out",
    icon: "assets/images/icons/logout.png",
    route: MyOrderview(),
  ),
];
