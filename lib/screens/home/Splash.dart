import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_shop_2/screens/home/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.cyan[100],
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image(
                image: AssetImage("assets/Logo/Untitled-1.png"),
                width: double.infinity,
                fit: BoxFit.cover,
              )

                  //     Text(
                  //   "Fashion Zone",
                  //   style: TextStyle(
                  //       fontSize: 40,
                  //       fontWeight: FontWeight.w300,
                  //       color: Theme.of(context).primaryColor),
                  // )

                  ),
              // SizedBox(
              //   height: 10.0,
              // ),
              SpinKitRipple(
                color: Colors.black,
              ),
            ]),
      ),
    ));
  }
}
