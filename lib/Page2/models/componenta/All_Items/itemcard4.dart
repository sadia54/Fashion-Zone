import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/All_Items/product4.dart';

class ItemCard4 extends StatelessWidget {
  final Product4 product4;
  final Function() press;
  const ItemCard4({
    Key key,
    this.product4,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultpaddin),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product4.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child:
                  Hero(tag: "${product4.id}", child: Image.asset(product4.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultpaddin / 4),
            child: Text(
              product4.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product4.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
