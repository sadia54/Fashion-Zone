import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Boys_Zone/Product2.dart';

class itemcard2 extends StatelessWidget {
  final Product2 product2;
  final Function() press;
  const itemcard2({
    Key key,
    this.product2,
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
                color: product2.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child:
                  Hero(tag: "${product2.id}", child: Image.asset(product2.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultpaddin / 4),
            child: Text(
              product2.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product2.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}