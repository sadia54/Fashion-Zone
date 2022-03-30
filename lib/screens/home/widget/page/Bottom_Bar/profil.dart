import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_2/screens/home/widget/page/Bottom_Bar/setting.dart';

class profile extends StatefulWidget {
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        backgroundColor: Colors.cyan[100],
        elevation: 0,
        title: Row(
          children: [
            Container(),
            Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Logo/1.png"), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            Text(
              ' Sadia Sultana',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => setting()));
            },
            icon: Icon(
              Icons.settings,
              size: 23,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Order',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          ),
          Card(
            color: Theme.of(context).primaryColor,
            child: Container(
              margin: EdgeInsets.all(8),
              child: Center(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.payment_outlined),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Text("To Pay"),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.car_rental),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            Text("To Receive"),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Icon(Icons.reviews_outlined),
                                Padding(padding: EdgeInsets.only(bottom: 10)),
                                Text("To Review"),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.keyboard_return_outlined),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 10)),
                                    Text("Order\nReturns"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              child: Divider(
                height: 100,
                thickness: 10,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Our Service',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        'View All',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Theme.of(context).primaryColor,
            child: Container(
              margin: EdgeInsets.all(5),
              child: Center(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.message_outlined),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Text("Messages"),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.reviews_outlined),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            Text("Review"),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Icon(Icons.payment_outlined),
                                Padding(padding: EdgeInsets.only(bottom: 10)),
                                Text("Payment\nOption"),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.help_outline),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 5)),
                                    Text("Help"),
                                  ],
                                ),
                                // SizedBox(
                                //   width: 20,
                                // ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Icon(
                                            Icons.cancel_presentation_outlined),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 10)),
                                        Text("        Order\nCancellations"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
