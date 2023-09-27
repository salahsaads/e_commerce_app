import 'package:flutter/material.dart';

class Cart_App_Bar extends StatelessWidget {
  const Cart_App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all((25)),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xff4c53a5),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Cart',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xff4c53a5),
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.more_vert,
            size: 30,
            color: Color(0xff4c53a5),
          )
        ],
      ),
    );
  }
}
