import 'package:flutter/material.dart';

class MyProducts {
  final String title;
  final String description;
  final String image;
  final double price;
  final String seller;
  final List<Color> color;
  final String category;
  final String review;
  final double rate;
  int quantity;

  MyProducts({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.seller,
    required this.color,
    required this.category,
    required this.review,
    required this.rate,
    required this.quantity,
  });
}

final List<MyProducts> products = [
  MyProducts(
    title: "X-90 Shoes",
    description:
        "Inspired by the bold aesthetics of the '90s, the New Balance X-90 shoes deliver a modern twist on a retro classic.",
    image: "assets/x90_shoes.png",
    price: 110,
    seller: "NextZin",
    color: [
      Colors.blue,
      Colors.pink,
      Colors.yellow,
    ],
    category: "Lifestyle Sneakers",
    review: "(440 Review)",
    rate: 8.9,
    quantity: 0,
  ),
  MyProducts(
    title: "Shirt",
    description:
        "This [fabric type, e.g., cotton or linen] shirt offers a perfect blend of comfort and style. ",
    image: "assets/shirt1.png",
    price: 10,
    seller: "Mr Narith",
    color: [
      Colors.yellow,
      Colors.pink,
      Colors.black,
    ],
    category: "Ten11",
    review: "(600 Review)",
    rate: 9.9,
    quantity: 1,
  ),
  MyProducts(
    title: "Man Shirt",
    description:
        "This [fabric type, e.g., cotton or linen] shirt offers a perfect blend of comfort and style. ",
    image: "assets/man_shirt.png",
    price: 15,
    seller: "Mr Narith",
    color: [
      Colors.yellow,
      Colors.pink,
      Colors.black,
      Colors.green,
    ],
    category: "Ten11",
    review: "(600 Review)",
    rate: 9.9,
    quantity: 1,
  ),
  MyProducts(
    title: "Controller",
    description:
        "This ergonomic wireless controller offers seamless connectivity and precise control for an immersive gaming experience.",
    image: "assets/controller1.png",
    price: 6,
    seller: "Mr Narith",
    color: [
      Colors.black,
      Colors.blue,
      Colors.red,
    ],
    category: "Controller",
    review: "(440 Review)",
    rate: 8.9,
    quantity: 1,
  ),
  MyProducts(
    title: "Nike Shoes",
    description:
        "Designed to combine cutting-edge technology and modern aesthetics, Nike shoes are the epitome of performance and fashion. Each pair offers: Unparalleled Comfort: Featuring innovative cushioning like Nike Air or React foam, these shoes ensure all-day support for both sports and casual wear.Durability You Can Rely On: Crafted with premium materials that withstand the toughest workouts and adventures.Dynamic Style: Sleek, modern designs that make a bold statement, whether you're on the track, court, or street.Performance-Driven Features: Engineered for athletes, with features like breathable uppers, enhanced traction, and lightweight construction to help you excel in any activity.Perfect for running, training, or everyday wear, Nike shoes are more than footwear—they’re a lifestyle choice. Step into innovation and elevate your game with Nike.",
    image: "assets/nike1.png",
    price: 160,
    seller: "Mr Narith",
    color: [
      Colors.blue,
      Colors.pink,
      Colors.black,
    ],
    category: "Nike",
    review: "(500 Review)",
    rate: 9.9,
    quantity: 1,
  ),
  MyProducts(
    title: "Wristwatch",
    description:
        "Inspired by the bold aesthetics of the '90s, the New Balance X-90 shoes deliver a modern twist on a retro classic. Featuring a sleek silhouette with premium materials, these shoes offer unmatched style and comfort. ",
    image: "assets/wristwatch.png",
    price: 90,
    seller: "Mr Nha",
    color: [
      Colors.yellow,
      Colors.pink,
      Colors.black,
    ],
    category: "Lifestyle Sneakers",
    review: "(440 Review)",
    rate: 8.9,
    quantity: 1,
  ),
  MyProducts(
    title: "Man Shoes",
    description:
        "Designed to combine cutting-edge technology and modern aesthetics, Nike shoes are the epitome of performance and fashion. Each pair offers: Unparalleled Comfort: Featuring innovative cushioning like Nike Air or React foam, these shoes ensure all-day support for both sports and casual wear.Durability You Can Rely On: Crafted with premium materials that withstand the toughest workouts and adventures.Dynamic Style: Sleek, modern designs that make a bold statement, whether you're on the track, court, or street.Performance-Driven Features: Engineered for athletes, with features like breathable uppers, enhanced traction, and lightweight construction to help you excel in any activity.Perfect for running, training, or everyday wear, Nike shoes are more than footwear—they’re a lifestyle choice. Step into innovation and elevate your game with Nike.",
    image: "assets/shoes2.png",
    price: 54,
    seller: "Mr Narith",
    color: [
      Colors.blue,
      Colors.pink,
      Colors.black,
    ],
    category: "Addidas",
    review: "(500 Review)",
    rate: 9.9,
    quantity: 1,
  ),
  MyProducts(
    title: "Addidas Shoes",
    description:
        "Designed to combine cutting-edge technology and modern aesthetics, Nike shoes are the epitome of performance and fashion. Each pair offers: Unparalleled Comfort: Featuring innovative cushioning like Nike Air or React foam, these shoes ensure all-day support for both sports and casual wear.Durability You Can Rely On: Crafted with premium materials that withstand the toughest workouts and adventures.Dynamic Style: Sleek, modern designs that make a bold statement, whether you're on the track, court, or street.Performance-Driven Features: Engineered for athletes, with features like breathable uppers, enhanced traction, and lightweight construction to help you excel in any activity.Perfect for running, training, or everyday wear, Nike shoes are more than footwear—they’re a lifestyle choice. Step into innovation and elevate your game with Nike.",
    image: "assets/shoes3.png",
    price: 54,
    seller: "Mr Narith",
    color: [
      Colors.blue,
      Colors.pink,
      Colors.black,
    ],
    category: "Addidas",
    review: "(500 Review)",
    rate: 9.9,
    quantity: 1,
  ),
];
final List<MyProducts> shoes = [
  MyProducts(
    title: "X-90 Shoes",
    description:
        "Inspired by the bold aesthetics of the '90s, the New Balance X-90 shoes deliver a modern twist on a retro classic.",
    image: "assets/x90_shoes.png",
    price: 110,
    seller: "Mr Narith",
    color: [
      Colors.blue,
      Colors.pink,
      Colors.yellow,
    ],
    category: "Lifestyle Sneakers",
    review: "(440 Review)",
    rate: 8.9,
    quantity: 0,
  ),
  MyProducts(
    title: "Nike Shoes",
    description:
        "Designed to combine cutting-edge technology and modern aesthetics, Nike shoes are the epitome of performance and fashion. Each pair offers: Unparalleled Comfort: Featuring innovative cushioning like Nike Air or React foam, these shoes ensure all-day support for both sports and casual wear.Durability You Can Rely On: Crafted with premium materials that withstand the toughest workouts and adventures.Dynamic Style: Sleek, modern designs that make a bold statement, whether you're on the track, court, or street.Performance-Driven Features: Engineered for athletes, with features like breathable uppers, enhanced traction, and lightweight construction to help you excel in any activity.Perfect for running, training, or everyday wear, Nike shoes are more than footwear—they’re a lifestyle choice. Step into innovation and elevate your game with Nike.",
    image: "assets/nike1.png",
    price: 160,
    seller: "Mr Narith",
    color: [
      Colors.blue,
      Colors.pink,
      Colors.black,
    ],
    category: "Nike",
    review: "(500 Review)",
    rate: 9.9,
    quantity: 1,
  ),
  MyProducts(
    title: "Man Shoes",
    description:
        "Designed to combine cutting-edge technology and modern aesthetics, Nike shoes are the epitome of performance and fashion. Each pair offers: Unparalleled Comfort: Featuring innovative cushioning like Nike Air or React foam, these shoes ensure all-day support for both sports and casual wear.Durability You Can Rely On: Crafted with premium materials that withstand the toughest workouts and adventures.Dynamic Style: Sleek, modern designs that make a bold statement, whether you're on the track, court, or street.Performance-Driven Features: Engineered for athletes, with features like breathable uppers, enhanced traction, and lightweight construction to help you excel in any activity.Perfect for running, training, or everyday wear, Nike shoes are more than footwear—they’re a lifestyle choice. Step into innovation and elevate your game with Nike.",
    image: "assets/shoes2.png",
    price: 54,
    seller: "Mr Narith",
    color: [
      Colors.blue,
      Colors.pink,
      Colors.black,
    ],
    category: "Addidas",
    review: "(500 Review)",
    rate: 9.9,
    quantity: 1,
  ),
  MyProducts(
    title: "Addidas Shoes",
    description:
        "Designed to combine cutting-edge technology and modern aesthetics, Nike shoes are the epitome of performance and fashion. Each pair offers: Unparalleled Comfort: Featuring innovative cushioning like Nike Air or React foam, these shoes ensure all-day support for both sports and casual wear.Durability You Can Rely On: Crafted with premium materials that withstand the toughest workouts and adventures.Dynamic Style: Sleek, modern designs that make a bold statement, whether you're on the track, court, or street.Performance-Driven Features: Engineered for athletes, with features like breathable uppers, enhanced traction, and lightweight construction to help you excel in any activity.Perfect for running, training, or everyday wear, Nike shoes are more than footwear—they’re a lifestyle choice. Step into innovation and elevate your game with Nike.",
    image: "assets/shoes3.png",
    price: 75,
    seller: "Mr Narith",
    color: [
      Colors.blue,
      Colors.pink,
      Colors.black,
    ],
    category: "Addidas",
    review: "(500 Review)",
    rate: 9.9,
    quantity: 1,
  ),
  MyProducts(
    title: "Men Shoes",
    description:
        "Designed to combine cutting-edge technology and modern aesthetics, Nike shoes are the epitome of performance and fashion. Each pair offers: Unparalleled Comfort: Featuring innovative cushioning like Nike Air or React foam, these shoes ensure all-day support for both sports and casual wear.Durability You Can Rely On: Crafted with premium materials that withstand the toughest workouts and adventures.Dynamic Style: Sleek, modern designs that make a bold statement, whether you're on the track, court, or street.Performance-Driven Features: Engineered for athletes, with features like breathable uppers, enhanced traction, and lightweight construction to help you excel in any activity.Perfect for running, training, or everyday wear, Nike shoes are more than footwear—they’re a lifestyle choice. Step into innovation and elevate your game with Nike.",
    image: "assets/men-shoes.png",
    price: 45,
    seller: "Mr Narith",
    color: [
      Colors.blue,
      Colors.pink,
      Colors.black,
    ],
    category: "Addidas",
    review: "(500 Review)",
    rate: 9.9,
    quantity: 1,
  ),
];
final List<MyProducts> beauty = [
  MyProducts(
    title: "Wristwatch",
    description:
        "Inspired by the bold aesthetics of the '90s, the New Balance X-90 shoes deliver a modern twist on a retro classic. Featuring a sleek silhouette with premium materials, these shoes offer unmatched style and comfort. ",
    image: "assets/wristwatch.png",
    price: 90,
    seller: "Mr Narith",
    color: [
      Colors.yellow,
      Colors.pink,
      Colors.black,
    ],
    category: "Lifestyle Sneakers",
    review: "(440 Review)",
    rate: 8.9,
    quantity: 1,
  ),
];
final List<MyProducts> fashion = [
  MyProducts(
    title: "Shirt",
    description:
        "This [fabric type, e.g., cotton or linen] shirt offers a perfect blend of comfort and style. ",
    image: "assets/shirt1.png",
    price: 10,
    seller: "Mr Narith",
    color: [
      Colors.yellow,
      Colors.pink,
      Colors.black,
    ],
    category: "Ten11",
    review: "(600 Review)",
    rate: 9.9,
    quantity: 1,
  ),
];
final List<MyProducts> controller = [
  MyProducts(
    title: "Controller",
    description:
        "This ergonomic wireless controller offers seamless connectivity and precise control for an immersive gaming experience.",
    image: "assets/controller1.png",
    price: 6,
    seller: "Mr Narith",
    color: [
      Colors.black,
      Colors.blue,
      Colors.red,
    ],
    category: "Controller",
    review: "(440 Review)",
    rate: 8.9,
    quantity: 1,
  ),
];
final List<MyProducts> shirt = [
  MyProducts(
    title: "Shirt",
    description:
        "This [fabric type, e.g., cotton or linen] shirt offers a perfect blend of comfort and style. ",
    image: "assets/shirt1.png",
    price: 10,
    seller: "Mr Narith",
    color: [
      Colors.yellow,
      Colors.pink,
      Colors.black,
    ],
    category: "Ten11",
    review: "(600 Review)",
    rate: 9.9,
    quantity: 1,
  ),
  MyProducts(
    title: "Shirt",
    description:
        "This [fabric type, e.g., cotton or linen] shirt offers a perfect blend of comfort and style. ",
    image: "assets/shirt1.png",
    price: 10,
    seller: "Mr Narith",
    color: [
      Colors.yellow,
      Colors.pink,
      Colors.black,
    ],
    category: "Ten11",
    review: "(600 Review)",
    rate: 9.9,
    quantity: 1,
  ),
  MyProducts(
    title: "Shirt",
    description:
        "This [fabric type, e.g., cotton or linen] shirt offers a perfect blend of comfort and style. ",
    image: "assets/shirt1.png",
    price: 10,
    seller: "Mr Narith",
    color: [
      Colors.yellow,
      Colors.pink,
      Colors.black,
    ],
    category: "Ten11",
    review: "(600 Review)",
    rate: 9.9,
    quantity: 1,
  ),
];
