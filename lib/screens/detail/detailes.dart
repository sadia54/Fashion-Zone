import 'package:flutter/material.dart';
import 'package:flutter_shop_2/models/Clothes.dart';
import 'package:flutter_shop_2/screens/detail/widget/detail_app_bar.dart';
import 'package:flutter_shop_2/screens/home/widget/Product_Info/Size_list.dart';
import 'package:flutter_shop_2/screens/home/widget/Product_Info/add_cart.dart';
import 'package:flutter_shop_2/screens/home/widget/Product_Info/clothes_info.dart';

class detailPage extends StatelessWidget {
  final Clothes clothes;
  detailPage(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            detailappbar(clothes),
            clothesInfo(clothes),
            SizeList(),
            AddCart(clothes),
          ],
        ),
      ),
    );
  }
}
