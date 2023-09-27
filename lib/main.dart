import 'package:e_commerce_app/pages/Cart_Page.dart';
import 'package:e_commerce_app/pages/Item_Page.dart';
import 'package:e_commerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => Homepage(),
        "CartPage": (context) => const CartPage(),
        "ItemPage": (context) => ItemPage(),
      },
      //57:59 / 1:30:55
    );
  }
}
