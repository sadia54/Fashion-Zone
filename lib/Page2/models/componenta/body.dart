import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Girls_Zone/Product.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Girls_Zone/Item_Card.dart';
import 'package:flutter_shop_2/Page2/models/componenta/categories.dart';
import 'package:flutter_shop_2/Page2/screen/Details/Details_Screen.dart';

class body extends StatelessWidget {
  const body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Fashion Zone",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: SizedBox(
              height: 20,
              width: 150,
              child:
               Divider(
                thickness: 3,
                endIndent: 5,
                color: Colors.teal.shade700,
              ),
            ),
          ),
          Categories(),
          // Expanded(
          //     child: Padding(
          //   padding: EdgeInsets.symmetric(horizontal: kDefaultpaddin),
          //   child: GridView.builder(
          //     itemCount: products.length,
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         childAspectRatio: 0.75,
          //         mainAxisSpacing: kDefaultpaddin,
          //         crossAxisSpacing: kDefaultpaddin),
          //     itemBuilder: (context, index) => ItemCard(
          //       product: products[index],
          //       press: () => Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) =>
          //                   DetailsScreen(product: products[index]))),
          //     ),
          //   ),
          // )),
        ],
      ),
    );
  }
}
