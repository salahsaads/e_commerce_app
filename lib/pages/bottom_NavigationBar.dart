import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItembottomNavigationBar extends StatelessWidget {
  const ItembottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '\$120',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xff4c53a5),
            ),
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.cart_badge_plus),
              label: const Text(
                "Add To Cart ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    ));
  }
}
