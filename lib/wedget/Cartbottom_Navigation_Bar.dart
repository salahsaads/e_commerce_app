import 'package:flutter/material.dart';

class CartbottomNavigationBar extends StatelessWidget {
  const CartbottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 130,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4c53a5),
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    '\$250',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4c53a5),
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xff4c53a5),
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "Chech Out",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )
            ]),
      ),
    );
  }
}
