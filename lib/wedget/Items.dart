import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i <= 7; i++)
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color(0xff4c53a5),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      "-50%",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.red,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'ItemPage');
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'images/$i.png',
                    height: 100,
                    width: 100,
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Product Title',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4c53a5),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Write description of product",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff4c53a5),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$56",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4c53a5),
                      ),
                    ),
                    Icon(Icons.shopping_cart_checkout_outlined)
                  ],
                ),
              )

              //start 25:04
            ]),
          )
      ],
    );
  }
}
