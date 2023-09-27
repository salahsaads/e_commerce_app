import 'package:e_commerce_app/wedget/CartAppBar.dart';
import 'package:e_commerce_app/wedget/Cartbottom_Navigation_Bar.dart';
import 'package:e_commerce_app/wedget/cart_Item.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: ListView(
        children: [
          const Cart_App_Bar(),
          Container(
            height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xffedecf2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(children: [
              const CertItams(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                padding: const EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff4c53a5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Text(
                      "Add Coupon code",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4c53a5),
                        fontSize: 16,
                      ),
                    ),
                  )
                ]),
              )
            ]),
          )
        ],
      ),
      bottomNavigationBar: const CartbottomNavigationBar(),
    ));
  }
}
