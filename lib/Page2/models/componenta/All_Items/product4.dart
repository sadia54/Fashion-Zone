import 'package:flutter/material.dart';

class Product4 {
  final image, title, description;
  final price, size, id;
  final Color color;

  Product4({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product4> products4 = [
  Product4(
      id: 1,
      title: "Sharee",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Girls_Zone/8.png",
      color: Color(0xFFFB7883)),
  Product4(
      id: 2,
      title: "White Show",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/All_Items/6.png",
      color: Color(0xFFD3A984)),
  Product4(
      id: 3,
      title: "Blue Frog",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/Childrens_Zone/4.png",
      color: Color(0xFF989493)),
  Product4(
      id: 4,
      title: "White Huddy",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/Boys_Zone/2.3.png",
      color: Color(0xFFE6B398)),
  Product4(
      id: 5,
      title: "Stylish Coat",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Boys_Zone/10.png",
      color: Color(0xFFFB7883)),
  Product4(
      id: 6,
      title: "Girls Coat",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Girls_Zone/1.2.png",
      color: Color(0xFFAEAEAE)),
];

String dummyText =
    "Gucci Oversize Hoodie, a hoddie with the Style of gucci\nmade of solt silk fabic, and made with an oversized\nmodel according to today\'s time";
