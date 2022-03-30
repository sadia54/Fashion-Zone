import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';


class CartCounter extends StatefulWidget {
  const CartCounter({Key key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        builldOutlinedButton(
          icon: Icons.remove,
          press: () {
            if (numOfItem > 1) {
              setState(() {
                numOfItem--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultpaddin / 2),
          child: Text(
            numOfItem.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        builldOutlinedButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItem++;
              });
            })
      ],
    );
  }

  SizedBox builldOutlinedButton({IconData icon, Function() press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              )),
          onPressed: press,
          child: Icon(icon),
        ));
  }
}
