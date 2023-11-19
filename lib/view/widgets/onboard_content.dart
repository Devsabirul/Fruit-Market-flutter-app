import 'package:flutter/material.dart';
import 'package:fruitmarket/constants.dart';
import 'package:fruitmarket/controller/onboarding_controller.dart';
import '../../model/onboard_list.dart';
import 'package:get/get.dart';

class OnboardingContent extends StatefulWidget {
  const OnboardingContent({super.key});

  @override
  State<OnboardingContent> createState() => _OnboardingContentState();
}

class _OnboardingContentState extends State<OnboardingContent> {
  Onboardingcontroller onboardcontroller = Get.put(Onboardingcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                  child: InkWell(
                    onTap: () {
                      onboardcontroller.getstarted();
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        color: secondaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: PageView.builder(
                itemCount: contents.length,
                controller: onboardcontroller.pageController,
                onPageChanged: onboardcontroller.currentIndex,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          child: Image.asset(
                            contents[index].image!,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          contents[index].title!,
                          style: const TextStyle(
                            fontFamily: "Poppins",
                            color: Color(0xff2F2E41),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          contents[index].description!,
                          style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: secondaryColor,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (index) => Obx(
                        () => Container(
                          height: 10,
                          width: onboardcontroller.currentIndex.value == index
                              ? 10
                              : 10,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: onboardcontroller.currentIndex.value == index
                                ? primaryColor
                                : Colors.white,
                            border: Border.all(
                              color: const Color(0xff6AA03B),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (onboardcontroller.currentIndex <
                          contents.length - 1) {
                        onboardcontroller.goto_next_page();
                      } else {
                        onboardcontroller.getstarted();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      fixedSize: const Size(146, 48),
                    ),
                    child: Obx(
                      () => onboardcontroller.currentIndex.value ==
                              contents.length - 1
                          ? const Text(
                              "Get Started",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              "Next",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
