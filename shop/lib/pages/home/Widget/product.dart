class Product {
  final String title;
  final String image;

  Product({
    required this.title,
    required this.image,
  });
}

final List<Product> categories = [
  Product(
    title: "All",
    image: "assets/all2.png",
  ),
  Product(
    title: "Shoes",
    image: "assets/shoes3.png",
  ),
  Product(
    title: "Beauty",
    image: "assets/beauty2.png",
  ),
  Product(
    title: "Fashion",
    image: "assets/fashion3.png",
  ),
  Product(
    title: "Controller",
    image: "assets/controller.png",
  ),
  Product(
    title: "Shirt",
    image: "assets/shirt.png",
  ),
];
