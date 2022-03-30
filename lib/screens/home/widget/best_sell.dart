import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_2/screens/home/widget/Product_Info/categories_list.dart';

class BestSell extends StatelessWidget {
  const BestSell({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Categorieslist('Best Of Sell'),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 130,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/Boys_Zone/2.1.png",
                                ),
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Black Huddy',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'Coat',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5),
                          ),
                          Text(
                            '\$79.99',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                        shape: BoxShape.circle),
                    child: FavoriteButton(
                      iconSize: 35,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite $_isFavorite)');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 130,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/All_Items/6.png",
                                ),
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' Winter Show',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'Like',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5),
                          ),
                          Text(
                            '\$58.99',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                        shape: BoxShape.circle),
                    child: FavoriteButton(
                      iconSize: 35,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite $_isFavorite)');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 130,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/Boys_Zone/10.png",
                                ),
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Men Winter Clothes',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'Coat',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5),
                          ),
                          Text(
                            '\$290.99',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                        shape: BoxShape.circle),
                    child: FavoriteButton(
                      iconSize: 35,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite $_isFavorite)');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 130,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/Girls_Zone/2.2.png",
                                ),
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Girls',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'Huddy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5),
                          ),
                          Text(
                            '\$98.99',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                        shape: BoxShape.circle),
                    child: FavoriteButton(
                      iconSize: 35,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite $_isFavorite)');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 130,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/Girls_Zone/8.png",
                                ),
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sharee',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'Jamdane',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5),
                          ),
                          Text(
                            '\$83.99',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                        shape: BoxShape.circle),
                    child: FavoriteButton(
                      iconSize: 35,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite $_isFavorite)');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
