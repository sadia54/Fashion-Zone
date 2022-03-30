import 'package:flutter/material.dart';

class Product {
  final image, title, description;
  final price, size, id;
  final Color color;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Girls Coat",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Girls_Zone/10.1.png",
      color: Color(0xFFFB7883)),
  Product(
      id: 2,
      title: "Sharee",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/Girls_Zone/8.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Winter Coat",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/Girls_Zone/1.2.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Black Coat",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/Girls_Zone/1.3.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Stylish Coat",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Girls_Zone/8.png",
      color: Color(0xFFFB7883)),
  Product(
      id: 6,
      title: "Huddy",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Girls_Zone/2.2.png",
      color: Color(0xFFAEAEAE)),
];

String dummyText =
    "Gucci Oversize Hoodie, a hoddie with the Style of gucci\nmade of solt silk fabic, and made with an oversized\nmodel according to today\'s time";
