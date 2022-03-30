import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_2/models/Clothes.dart';
import 'package:flutter_shop_2/screens/home/widget/New_Arrival.dart';
import 'package:flutter_shop_2/screens/home/widget/best_sell.dart';
import 'package:flutter_shop_2/screens/home/widget/Top_Bar/Top_Pic.dart';
import 'package:flutter_shop_2/screens/home/widget/page/Bottom_Bar/cart.dart';
import 'package:flutter_shop_2/screens/home/widget/page/Bottom_Bar/favourite.dart';
import 'package:flutter_shop_2/screens/home/widget/page/Bottom_Bar/profil.dart';
import 'package:flutter_shop_2/screens/home/widget/Top_Bar/search_input.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;

  final pages = [
    profile(),
    cart(),
    Fav(),
  ];

  @override
  Widget build(BuildContext context) {
    Clothes clothes;
    return SafeArea(
        maintainBottomViewPadding: true,
        top: false,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.cyan[100],
            title: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '      Welcome To  \n     Fashion Zone',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: '👀', style: TextStyle(fontSize: 22)),
            ])),
            actions: [
              IconButton(
                splashColor: Colors.black,
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_sharp,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          extendBody: true,
          backgroundColor: Colors.cyan[100],
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                SearchInput(),
                TopPic(),
                NewArrival(),
                SizedBox(
                  height: 20,
                ),
                BestSell(),
                SizedBox(
                  height: 70,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
              index: 0,
              color: Theme.of(context).primaryColor,
              buttonBackgroundColor: Colors.white,
              backgroundColor: Colors.transparent,
              height: 60,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 300),
              onTap: (index) {
                setState(() {
                  _page = index;
                });
              },
              items: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Icon(
                    Icons.home,
                    size: 30,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => cart()));
                  },
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Fav()));
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => profile()));
                  },
                  child: Icon(
                    Icons.account_box_outlined,
                    size: 30,
                  ),
                ),
              ]),
        ));
  }
}
