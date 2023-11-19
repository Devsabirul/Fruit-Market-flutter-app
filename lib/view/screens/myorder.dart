import 'package:flutter/material.dart';
import 'package:fruitmarket/constants.dart';
import 'package:get/get.dart';
import '../../model/my_order_list.dart';

class MyOrderview extends StatelessWidget {
  const MyOrderview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          "MyOrder",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: List.generate(
                orderList.length,
                (index) => Container(
                  width: Get.width,
                  height: 100,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 95,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              orderList[index].image!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    orderList[index].name!,
                                    style: const TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                              const Text("⭐⭐⭐⭐⭐"),
                              const Text(
                                "Rate this Product ",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                orderList[index].deliveryDate!,
                                style: const TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
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
    );
  }
}
