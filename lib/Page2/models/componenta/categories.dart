import 'package:flutter/material.dart';
import 'package:flutter_shop_2/Page2/constants.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Girls_Zone/Product.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Girls_Zone/Item_Card.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Boys_Zone/Product2.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Boys_Zone/itemcard2.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Childrens_Zone/itemcard3.dart';
import 'package:flutter_shop_2/Page2/models/componenta/All_Items/itemcard4.dart';
import 'package:flutter_shop_2/Page2/models/componenta/Childrens_Zone/product3.dart';
import 'package:flutter_shop_2/Page2/models/componenta/All_Items/product4.dart';

import 'package:flutter_shop_2/Page2/screen/Details/Details_Screen.dart';

class Categories extends StatefulWidget {
  const Categories({Key key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Column(
      children: [
        Container(),
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelPadding: EdgeInsets.only(left: 20, right: 20),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicator: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(30.0)),
              tabs: [
                Tab(
                  text: "Girl\'s Zone",
                ),
                Tab(
                  text: "Boy\'s Zone",
                ),
                Tab(
                  text: "Children\'s Zone",
                ),
                Tab(
                  text: "All Item",
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 600,
          width: 500,
          child: TabBarView(
            controller: _tabController,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultpaddin),
                  child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        mainAxisSpacing: kDefaultpaddin,
                        crossAxisSpacing: kDefaultpaddin),
                    itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen(product: products[index]))),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultpaddin),
                  child: GridView.builder(
                    itemCount: products2.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        mainAxisSpacing: kDefaultpaddin,
                        crossAxisSpacing: kDefaultpaddin),
                    itemBuilder: (context, index) => itemcard2(
                      product2: products2[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen2(product2: products2[index]))),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultpaddin),
                  child: GridView.builder(
                    itemCount: products3.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        mainAxisSpacing: kDefaultpaddin,
                        crossAxisSpacing: kDefaultpaddin),
                    itemBuilder: (context, index) => ItemCard3(
                      product3: products3[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen3(
                                    product3: products3[index],
                                  ))),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultpaddin),
                  child: GridView.builder(
                    itemCount: products4.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        mainAxisSpacing: kDefaultpaddin,
                        crossAxisSpacing: kDefaultpaddin),
                    itemBuilder: (context, index) => ItemCard4(
                      product4: products4[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen4(product4: products4[index]))),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}















// import 'package:flutter/material.dart';
// import 'package:flutter_shop_2/Page2/models/Product.dart';
// import 'package:flutter_shop_2/Page2/models/componenta/Item_Card.dart';

// class Categories extends StatefulWidget {
//   const Categories({Key key}) : super(key: key);

//   @override
//   _CategoriesState createState() => _CategoriesState();
// }

// class _CategoriesState extends State<Categories> with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     // TabController _tabController = TabController(length: 4, vsync: this);
//     return Column(
//       children: [
//         Container(),
//         SizedBox(),
//         Container(),
//         SizedBox(),
//         // Container(
//         //   child: TabBar(controller: _tabController, tabs: [
//         //     Tab(
//         //       text: "Girl\'s Zone",
//         //     ),
//         //     Tab(
//         //       text: "Boy\'s Zone",
//         //     ),
//         //     Tab(
//         //       text: "Children\'s Zone",
//         //     ),
//         //     Tab(
//         //       text: "All Item",
//         //     ),
//         //   ]),
//         // ),
// Container(
//   child: TabBar(
//     tabs: [
//         Tab(
//               text: "Girl\'s Zone",
//             ),
//             Tab(
//               text: "Boy\'s Zone",
//             ),
//             Tab(
//               text: "Children\'s Zone",
//             ),
//             Tab(
//               text: "All Item",
//             ),

//     ],
//   ),
// ),

//         Container(
// child: TabBarView(
//   children: [

//     Text("Hi"),
//     Text("there"),
//     Text("here")
 
// ],),
//          ) ]
//     );
//   }
// }






























// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_shop_2/Page2/constants.dart';

// // // class Categories extends StatefulWidget {
// // //   const Categories({Key key}) : super(key: key);

// // //   @override
// // //   _CategoriesState createState() => _CategoriesState();
// // // }

// // // class _CategoriesState extends State<Categories> {
// // //   List<String> categories = [
// // //     "Girl's Zone",
// // //     "Boy's Zone",
// // //     "Childern's Zone",
// // //     "All Item"
// // //   ];

// // //   int selectedIndex = 0;
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Padding(
// // //       padding: const EdgeInsets.symmetric(vertical: kDefaultpaddin),
// // //       child: SizedBox(
// // //         height: 25,
// // //         child: ListView.builder(
// // //           addAutomaticKeepAlives: true,
// // //           scrollDirection: Axis.horizontal,
// // //           itemCount: categories.length,
// // //           itemBuilder: (context, index) => buildCategory(index),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget buildCategory(int index) {
// // //     return Padding(
// // //       padding: const EdgeInsets.symmetric(horizontal: kDefaultpaddin),
// // //       child: GestureDetector(
// // //         onTap: () {
// // //           setState(() {
// // //             selectedIndex = index;
// // //           });
// // //         },
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             Text(
// // //               categories[index],
// // //               style: TextStyle(
// // //                 fontWeight: FontWeight.bold,
// // //                 color: selectedIndex == index ? kTextColor : kTextLightColor,
// // //               ),
// // //             ),
// // //             Container(
// // //               margin: EdgeInsets.only(top: kDefaultpaddin / 4),
// // //               height: 2,
// // //               width: 30,
// // //               color: selectedIndex == index ? Colors.black : Colors.transparent,
// // //             )
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
