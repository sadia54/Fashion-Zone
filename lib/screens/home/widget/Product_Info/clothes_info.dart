import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_2/models/Clothes.dart';

class clothesInfo extends StatelessWidget {
  final Clothes clothes;
  clothesInfo(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${clothes.title}' '${clothes.subtitle}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Container(
                  height: 40,
                  width: 50,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle),
                  child: FavoriteButton(
                    iconSize: 30,
                    valueChanged: (_isFavorite) {
                      print('Is Favorite $_isFavorite)');
                    },
                  ),
                ),
                Icon(
                  Icons.share,
                  size: 30,
                  color: Colors.black.withOpacity(0.5),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.star_border,
                    color: Theme.of(context).primaryColor,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Theme.of(context).primaryColor,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Theme.of(context).primaryColor,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Theme.of(context).primaryColor,
                  ),
                  Text(
                    '4.5(2.7k)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      "Gucci Oversize Hoodie, a hoddie with the Style of gucci\nmade of solt silk fabic, and made with an oversized\nmodel according to today\'s time",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.7),
                      height: 1.7)),
              TextSpan(
                  text: 'Read More',
                  style: TextStyle(color: Theme.of(context).primaryColor))
            ])),
          ],
        ));
  }
}
