class MyOrderList {
  String? name;
  String? image;
  String? deliveryDate;

  MyOrderList({this.name, this.image, this.deliveryDate});
}

List<MyOrderList> orderList = [
  MyOrderList(
    name: "Broccoli",
    image: "assets/images/Broccoli.jpg",
    deliveryDate: "Delivered on 24 Feb 2023.",
  ),
  MyOrderList(
    name: "Onion",
    image: "assets/images/Nectarines.jfif",
    deliveryDate: "Delivered on 24 Feb 2023.",
  ),
  MyOrderList(
    name: "Anjeer",
    image: "assets/images/Broccoli.jpg",
    deliveryDate: "Delivered on 24 Feb 2023.",
  ),
];
