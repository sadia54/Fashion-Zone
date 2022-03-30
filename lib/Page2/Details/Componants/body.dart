import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Girls_Zone/Product.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/Girls_Zone/Add_to_Cart.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/Color_and_size.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/Counter_with_FavBtn.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/Description.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/Girls_Zone/Product_Title_with_Image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultpaddin,
                    right: kDefaultpaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kDefaultpaddin / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: kDefaultpaddin / 2,
                      ),
                      CounterWithFavBtn(),
                      SizedBox(
                        height: kDefaultpaddin / 2,
                      ),
                      AddtoCart(product: product)
                    ],
                  ),
                ),
                TitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
