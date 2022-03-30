import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Boys_Zone/Product2.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Childrens_Zone/product3.dart';
import 'package:flutter_shop_2/Page2/models/componenta/All_Items/product4.dart';

class ProductTitleWithImage3 extends StatelessWidget {
  const ProductTitleWithImage3({
    Key key,
    this.product3,
  }) : super(key: key);

  final Product3 product3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultpaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Children's Zone",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product3.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: kDefaultpaddin,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Price\n",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: "\$${product3.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.lightGreenAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                width: 100,
              ),
              Expanded(
                  child: Hero(
                tag: "${product3.id}",
                child: Image.asset(
                  product3.image,
                  fit: BoxFit.fitHeight,
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
