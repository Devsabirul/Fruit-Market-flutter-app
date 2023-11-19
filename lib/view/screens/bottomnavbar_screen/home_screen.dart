import 'package:flutter/material.dart';
import 'package:fruitmarket/constants.dart';
import 'package:fruitmarket/controller/tabbar_controller.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/foods_products.dart';
import '../../widgets/vegetables_products.dart';
import '../../widgets/dry_fruits.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
         statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TabBarControllers tabcontroll = Get.put(TabBarControllers());
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => DefaultTabController(
            length: tabcontroll.tabLenght.value,
            initialIndex: tabcontroll.initialIndex.value,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                SizedBox(
                  height: 35,
                  child: TabBar(
                    labelStyle: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                    ),
                    indicator: BoxDecoration(
                      color: const Color(0xffCC7D00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    tabs: const [
                      Tab(text: "Vegetables"),
                      Tab(text: "Fruits"),
                      Tab(text: "Dry Fruits"),
                    ],
                  ),
                ),
                const Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      VegetablesView(),
                      FoodsView(),
                      DryFruitsViews(),
                    ],
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
