import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_2/models/Clothes.dart';
import 'package:flutter_shop_2/screens/detail/detailes.dart';

class ClothsItem extends StatelessWidget {
  final Clothes clothes;
  ClothsItem(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => detailPage(clothes)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 180,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(clothes.imageUrl),
                        fit: BoxFit.fitHeight),
                  ),
                ),
                Positioned(
                    right: 20,
                    top: 15,
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          shape: BoxShape.circle),
                      child: FavoriteButton(
                        iconSize: 35,
                        valueChanged: (_isFavorite) {
                          print('Is Favorite $_isFavorite)');
                        },
                      ),
                    ))
              ],
            ),
            Text(
              clothes.title,
              style: TextStyle(fontWeight: FontWeight.bold, height: 1.5),
            ),
            Text(clothes.subtitle,
                style: TextStyle(fontWeight: FontWeight.bold, height: 1.5)),
            Text(clothes.price,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Theme.of(context).primaryColor)),
          ],
        ),
      ),
    ));
  }
}
