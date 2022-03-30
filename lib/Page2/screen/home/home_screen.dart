import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/body.dart';

class HomScreen extends StatefulWidget {
  @override
  State<HomScreen> createState() => _HomScreenState();
}

class _HomScreenState extends State<HomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: buildAppBar(),
      body: body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.cyan[100],
      elevation: 0,
      title: Text(
        'Only For you',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: kTextColor,
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: kTextColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: kTextColor,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined),
          color: kTextColor,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert_outlined),
          color: kTextColor,
        ),
        SizedBox(
          width: kDefaultpaddin / 2,
        )
      ],
    );
  }
}
