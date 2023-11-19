import 'package:flutter/material.dart';
import 'package:fruitmarket/constants.dart';
import 'package:fruitmarket/view/screens/bottomnavbar_screen/home_screen.dart';
import 'package:fruitmarket/view/screens/bottomnavbar_screen/myaccount_screen.dart';
import 'package:flutter/services.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  var _currentIndex = 0;

  List<Widget> widgetsList = [
    HomeScreen(),
    Text("WKDL"),
    Text("WKDL"),
    MyAccountScreenView(),
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: widgetsList[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Shopping Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "My Account",
          ),
        ],
        selectedItemColor: primaryColor,
        unselectedItemColor: secondaryColor,
        showUnselectedLabels: true,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
