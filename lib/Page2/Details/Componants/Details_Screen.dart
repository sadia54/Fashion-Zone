import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/Details/Componants/body.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Girls_Zone/Product.dart';



class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body:Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
          )),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
        SizedBox(
          width: kDefaultpaddin / 2,
        )
      ],
    );
  }
}
