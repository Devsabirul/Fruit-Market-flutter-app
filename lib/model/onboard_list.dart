class OnBoardingList {
  String? title;
  String? description;
  String? image;

  OnBoardingList({this.title, this.description, this.image});
}

List<OnBoardingList> contents = [
  OnBoardingList(
    title: "E Shopping",
    description: "Explore top organic fruits & grab them",
    image: "assets/images/onboard_img1.png",
  ),
  OnBoardingList(
    title: "Delivery on the way",
    description: "Get your order by speed delivery",
    image: "assets/images/onboard_img2.png",
  ),
  OnBoardingList(
    title: "Delivery Arrived",
    description: "Order is arrived at your place",
    image: "assets/images/onboard_img3.png",
  )
];
