import 'package:flutter/material.dart';

class Product2 {
  final image, title, description;
  final price, size, id;
  final Color color;

  Product2({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product2> products2 = [
  Product2(
      id: 1,
      title: "Boy's Coat",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Boys_Zone/2.1.png",
      color: Color(0xFFFB7883)),
  Product2(
      id: 2,
      title: "White Huddy",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/Boys_Zone/2.3.png",
      color: Color(0xFFD3A984)),
  Product2(
      id: 3,
      title: "Blue Coat",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/Boys_Zone/10.png",
      color: Color(0xFF989493)),
  Product2(
      id: 4,
      title: "Black Coat",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/Boys_Zone/2.1.png",
      color: Color(0xFFE6B398)),
  Product2(
      id: 5,
      title: "Stylish Coat",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Boys_Zone/10.png",
      color: Color(0xFFFB7883)),
  Product2(
      id: 6,
      title: "Huddy",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Boys_Zone/2.1.png",
      color: Color(0xFFAEAEAE)),
];

String dummyText =
    "Gucci Oversize Hoodie, a hoddie with the Style of gucci\nmade of solt silk fabic, and made with an oversized\nmodel according to today\'s time";
