import 'package:flutter/material.dart';
import 'package:fruitmarket/constants.dart';
import 'package:get/get.dart';
import '../../../model/my_account_list.dart';

class MyAccountScreenView extends StatelessWidget {
  const MyAccountScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width,
              height: Get.height * 0.25,
              color: primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 85,
                          width: 85,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width: 1,
                              color: Colors.white,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "assets/images/profile.jfif",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/icons/edit.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Manish Chutake",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "manishuxuid@gmail.com",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    contents.length,
                    (index) => Container(
                      width: Get.width,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0xffD1D1D1),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 18),
                        child: InkWell(
                          onTap: () {
                            Get.to(contents[index].route!,
                                transition: Transition.rightToLeft);
                            print(contents[index].route!);
                          },
                          child: Row(
                            children: [
                              Image.asset(contents[index].icon!),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                contents[index].title!,
                                style: const TextStyle(
                                  color: Color(0xff393939),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
