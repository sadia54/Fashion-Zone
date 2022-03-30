import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_2/screens/home/home.dart';
import 'package:flutter_shop_2/screens/home/widget/page/Bottom_Bar/cart.dart';
import 'package:flutter_shop_2/screens/home/widget/page/Bottom_Bar/favourite.dart';
import 'package:flutter_shop_2/screens/home/widget/page/Bottom_Bar/profil.dart';
import 'package:flutter_shop_2/screens/home/widget/Top_Bar/search_input.dart';

class setting extends StatelessWidget {
   int _page = 0;
  final pages = [profile(), cart(), Fav(), HomePage()];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
       maintainBottomViewPadding: true,
        top: false,
      child: Scaffold(
         extendBody: true,
        backgroundColor: Colors.cyan[100],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.cyan[100],
          title: Text(
            'Settings',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Card(
                color: Theme.of(context).primaryColor,
                shadowColor: Colors.black,
                borderOnForeground: true,
                child: Container(
                  child: ListTile(
                    title: Text('Account Information'),
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).primaryColor,
                shadowColor: Colors.black,
                borderOnForeground: true,
                child: Container(
                  child: ListTile(
                    title: Text('Address Book'),
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).primaryColor,
                shadowColor: Colors.black,
                borderOnForeground: true,
                child: Container(
                  child: ListTile(
                    title: Text('Messages'),
                    subtitle:
                        Text('Receive excllusive offers and personal updates'),
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).primaryColor,
                shadowColor: Colors.black,
                borderOnForeground: true,
                child: Container(
                  child: ListTile(
                    title: Text('Country'),
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).primaryColor,
                shadowColor: Colors.black,
                borderOnForeground: true,
                child: Container(
                  child: ListTile(
                    title: Text('Language'),
                    subtitle: Text('English'),
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).primaryColor,
                shadowColor: Colors.black,
                borderOnForeground: true,
                child: Container(
                  child: ListTile(
                    title: Text('General'),
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).primaryColor,
                shadowColor: Colors.black,
                borderOnForeground: true,
                child: Container(
                  child: ListTile(
                    title: Text('Policies'),
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).primaryColor,
                shadowColor: Colors.black,
                borderOnForeground: true,
                child: Container(
                  child: ListTile(
                    title: Text('Help'),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Card(
                color: Theme.of(context).primaryColor,
                shadowColor: Colors.black,
                borderOnForeground: true,
                child: Container(
                  child: ListTile(
                    title: Text(
                      'Logout',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
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
      ),
    );
  }
}

void setState(Null Function() param0) {
}
