import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_shop_2/screens/home/Splash.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion Zone',
      theme: ThemeData(
        backgroundColor: Color(0xFFFFAFAFA),
        primaryColor: Color(0xFFFFBD00),
      ),
      home: Splash(),
    );
  }
}
