import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Girls_Zone/Product.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Boys_Zone/Product2.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Childrens_Zone/product3.dart';
import 'package:flutter_shop_2/Page2/models/componenta/All_Items/product4.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/Boys_Zone/bady2.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/Girls_Zone/body.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/Childrens_Zone/body3.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/All_Items/body4.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
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
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        SizedBox(
          width: kDefaultpaddin / 2,
        )
      ],
    );
  }
}

class DetailsScreen2 extends StatelessWidget {
  final Product2 product2;

  const DetailsScreen2({Key key, this.product2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product2.color,
      appBar: buildAppBar(context),
      body: Body2(
        product2: product2,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product2.color,
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
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        SizedBox(
          width: kDefaultpaddin / 2,
        )
      ],
    );
  }
}

class DetailsScreen3 extends StatelessWidget {
  final Product3 product3;

  const DetailsScreen3({Key key, this.product3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product3.color,
      appBar: buildAppBar(context),
      body: Body3(
        product3: product3,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product3.color,
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
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        SizedBox(
          width: kDefaultpaddin / 2,
        )
      ],
    );
  }
}

class DetailsScreen4 extends StatelessWidget {
  final Product4 product4;

  const DetailsScreen4({Key key, this.product4}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product4.color,
      appBar: buildAppBar(context),
      body: Body4(
        product4: product4,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product4.color,
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
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        SizedBox(
          width: kDefaultpaddin / 2,
        )
      ],
    );
  }
}
