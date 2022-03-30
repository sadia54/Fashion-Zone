import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Childrens_Zone/product3.dart';

class ItemCard3 extends StatelessWidget {
  final Product3 product3;
  final Function() press;
  const ItemCard3({
    Key key,
    this.product3,
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
                color: product3.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child:
                  Hero(tag: "${product3.id}", child: Image.asset(product3.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultpaddin / 4),
            child: Text(
              product3.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product3.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
