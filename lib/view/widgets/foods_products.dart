import 'package:flutter/material.dart';

class FoodsView extends StatelessWidget {
  const FoodsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  title: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Organic Fruits ",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff141313),
                          ),
                        ),
                        TextSpan(
                          text: " (20% off)",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color(0xff4CA300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Text(
                    "Pick up from organic farms",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 118,
                                height: 143,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 118,
                                      height: 143,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          "https://clv.h-cdn.co/assets/15/22/2560x1728/gallery-1432664914-strawberry-facts1.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              print("HELLO");
                                            },
                                            child: const Icon(
                                              Icons.favorite_border,
                                              color: Color(0xffEDCB15),
                                              size: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text("⭐⭐⭐⭐⭐"),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                "Strawberry",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff393939),
                                ),
                              ),
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "\$",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff393939),
                                      ),
                                    ),
                                    TextSpan(
                                      text: " 300 Per/ kg",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        color: Color(0xff393939),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const ListTile(
                  title: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Mixed Fruit Pack ",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff141313),
                          ),
                        ),
                        TextSpan(
                          text: " (10% off)",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color(0xff4CA300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Text(
                    "Fruit mix fresh pack",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 118,
                                height: 143,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 118,
                                      height: 143,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          "https://media.istockphoto.com/id/154934887/photo/fruit-cup.jpg?s=612x612&w=0&k=20&c=flyzCSO0KpZa1Tk3j7d-64E9MrKnzNcx7jxEJ02iT-I=",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              print("HELLO");
                                            },
                                            child: const Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text("⭐⭐⭐⭐⭐"),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                "Multi Fruits Pack",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff393939),
                                ),
                              ),
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "\$",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff393939),
                                      ),
                                    ),
                                    TextSpan(
                                      text: " 300 Per/ kg",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        color: Color(0xff393939),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const ListTile(
                  title: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Stone Fruits ",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff141313),
                          ),
                        ),
                        TextSpan(
                          text: " (20% off)",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color(0xff4CA300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Text(
                    "Fresh Stone Fruits",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => Container(
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 118,
                                height: 143,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 118,
                                      height: 143,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB1TddOXC4YHSNbNAuPbkU894wqol3FsL5W7Uwe80MJowiWV9WQVRA91IREngNICDb7Oc&usqp=CAU",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              print("HELLO");
                                            },
                                            child: const Icon(
                                              Icons.favorite_border,
                                              color: Color(0xffEDCB15),
                                              size: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text("⭐⭐⭐⭐⭐"),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                "Nectarines",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff393939),
                                ),
                              ),
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "\$",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff393939),
                                      ),
                                    ),
                                    TextSpan(
                                      text: " 300 Per/ kg",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        color: Color(0xff393939),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const ListTile(
                  title: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Melons ",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff141313),
                          ),
                        ),
                        TextSpan(
                          text: " (5% off)",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color(0xff4CA300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Text(
                    "Fresh Melons Fruits",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => Container(
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 118,
                                height: 143,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 118,
                                      height: 143,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo4yOiibRQM9aH2jR5_16byK5pm3igxMsKeg&usqp=CAU",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              print("HELLO");
                                            },
                                            child: const Icon(
                                              Icons.favorite_border,
                                              color: Color(0xffEDCB15),
                                              size: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text("⭐⭐⭐⭐⭐"),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                "Nectarines",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff393939),
                                ),
                              ),
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "\$",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff393939),
                                      ),
                                    ),
                                    TextSpan(
                                      text: " 300 Per/ kg",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        color: Color(0xff393939),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
