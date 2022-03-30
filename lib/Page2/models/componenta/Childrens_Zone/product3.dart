import 'package:flutter/material.dart';

class Product3 {
  final image, title, description;
  final price, size, id;
  final Color color;

  Product3({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product3> products3 = [
  Product3(
      id: 1,
      title: "Boy's Swetar",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Childrens_Zone/5.1.png",
      color: Color(0xFFFB7883)),
  Product3(
      id: 2,
      title: "Girl's Frog",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/Childrens_Zone/4.png",
      color: Color(0xFFD3A984)),
  Product3(
      id: 3,
      title: "Blue Coat",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/Childrens_Zone/5.2.png",
      color: Color(0xFF989493)),
  Product3(
      id: 4,
      title: "Swter",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/Childrens_Zone/5.png",
      color: Color(0xFFE6B398)),
  Product3(
      id: 5,
      title: "Stylish Coat",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Childrens_Zone/4.png",
      color: Color(0xFFFB7883)),
  Product3(
      id: 6,
      title: "Huddy",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Childrens_Zone/5.1.png",
      color: Color(0xFFAEAEAE)),
];

String dummyText =
    "Gucci Oversize Hoodie, a hoddie with the Style of gucci\nmade of solt silk fabic, and made with an oversized\nmodel according to today\'s time";
