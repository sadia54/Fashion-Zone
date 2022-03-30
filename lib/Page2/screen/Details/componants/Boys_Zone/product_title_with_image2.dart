import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Boys_Zone/Product2.dart';

class ProductTitleWithImage2 extends StatelessWidget {
  const ProductTitleWithImage2({
    Key key,
    this.product2,
  }) : super(key: key);

  final Product2 product2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultpaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Boy's Zone",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product2.title,
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
                      text: "\$${product2.price}",
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
                tag: "${product2.id}",
                child: Image.asset(
                  product2.image,
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
