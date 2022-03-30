import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Girls_Zone/Product.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Boys_Zone/Product2.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    this.product,
    this.product2,
  }) : super(key: key);

  final Product product;
  final Product2 product2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultpaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product.title,
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
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.lightGreenAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: kDefaultpaddin,
              ),
              Expanded(
                  child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
