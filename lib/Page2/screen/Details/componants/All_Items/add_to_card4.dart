import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';

import 'package:flutter_shop_2/Page2/models/componenta/All_Items/product4.dart';

class AddtoCart4 extends StatelessWidget {
  const AddtoCart4({
    Key key,
    this.product4,
  }) : super(key: key);

  final Product4 product4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultpaddin),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultpaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: product4.color)),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: product4.color,
                )),
          ),
          Expanded(
            child: SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: product4.color,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Buy Now".toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
