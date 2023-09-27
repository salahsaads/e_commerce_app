import 'package:badges/badges.dart' as Badge;
import 'package:flutter/material.dart';

class Home_App_Bar extends StatelessWidget {
  const Home_App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: Color(0xff4c53a5),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "DP Shop",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xff4c53a5),
              ),
            ),
          ),
          const Spacer(),
          Badge.Badge(
            badgeContent: const Text("3"),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "CartPage");
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Color(0xff4c53a5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
