import 'package:flutter/material.dart';

class ItemPageApp extends StatelessWidget {
  const ItemPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(children: [
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
          padding: EdgeInsets.only(left: 25),
          child: Text(
            "Product",
            style: TextStyle(
                color: Color(0xff4c53a5),
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.favorite,
          color: Colors.red,
          size: 30,
        )
      ]),
    );
  }
}
