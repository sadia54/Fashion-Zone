import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CartCounter(),
      Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: FavoriteButton(
            isFavorite: true,
            valueChanged: (_isFavorite) {
              print('Is Favourite : $_isFavorite');
            },
            iconColor: Colors.white,
            iconSize: 33,
          ))
    ]);
  }
}
