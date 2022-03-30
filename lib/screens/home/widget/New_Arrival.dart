import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/screen/home/home_screen.dart';
import 'package:flutter_shop_2/models/Clothes.dart';
import 'package:flutter_shop_2/screens/home/widget/Product_Info/categories_list.dart';
import 'package:flutter_shop_2/screens/home/widget/Product_Info/Clothes_Item.dart';

class NewArrival extends StatelessWidget {
  final clothesList = Clothes.generateClothes();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomScreen()));
      },
      child: Container(
        child: Column(
          children: [
            Categorieslist("New Arrival"),
            Container(
              height: 280,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 25),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ClothsItem(clothesList[index]),
                separatorBuilder: (_, index) => SizedBox(
                  width: 15,
                ),
                itemCount: clothesList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
