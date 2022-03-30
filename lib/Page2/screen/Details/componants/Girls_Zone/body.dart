import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/Details/Componants/Product_Title_with_Image.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Girls_Zone/Product.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Boys_Zone/Product2.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Childrens_Zone/product3.dart';
import 'package:flutter_shop_2/Page2/models/componenta/All_Items/product4.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/Girls_Zone/Add_to_Cart.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/Counter_with_FavBtn.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/Girls_Zone/Product_Title_with_Image.dart';
import 'package:flutter_shop_2/Page2/screen/Details/componants/Boys_Zone/product_title_with_image2.dart';
import 'package:flutter_shop_2/screens/home/widget/Product_Info/Size_list.dart';

class Body extends StatelessWidget {
  final Product product;
 
  

  const Body({Key key, this.product,
  
  
  }) : super(key: key);

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
                      Row(
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
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text:
                                "Gucci Oversize Hoodie, a hoddie with the Style of gucci made of solt silk fabic, and made with an oversized model according to today's time",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.7),
                                height: 1.7)),
                        TextSpan(
                            text: 'Read More',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor))
                      ])),
                      SizedBox(
                        height: kDefaultpaddin / 2,
                      ),
                      SizeList(),
                      // ColorAndSize(product: product),
                      SizedBox(
                        height: kDefaultpaddin / 2,
                      ),
                      // Description(product: product),
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
                TitleWithImage(product: product,)
              ],
            ),
          )
        ],
      ),
    );
  }
}







