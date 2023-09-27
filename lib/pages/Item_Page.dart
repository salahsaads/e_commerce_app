import 'package:clippy_flutter/arc.dart';
import 'package:e_commerce_app/pages/bottom_NavigationBar.dart';
import 'package:e_commerce_app/wedget/Item_PageApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPage extends StatelessWidget {

  List<Color> Color1 = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.indigo
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedecf2),
      body: ListView(children: [
        const ItemPageApp(),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Image.asset(
            'images/1.png',
            height: 300,
            width: 300,
          ),
        ),
        Arc(
          edge: Edge.TOP,
          arcType: ArcType.CONVEY,
          height: 30,
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 40, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          "Product Title",
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xff4c53a5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => const Icon(
                            Icons.favorite,
                            color: Color(0xff4c53a5),
                          ),
                          //1:11:32
                          onRatingUpdate: (index) {},
                        ),
                        Row(
                          children: [
                            Container(
                              // ignore: sort_child_properties_last
                              child: const Icon(
                                CupertinoIcons.minus,
                                size: 18,
                              ),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              child: const Text(
                                '01',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xff4c53a5),
                                ),
                              ),
                            ),
                            Container(
                              child: const Icon(
                                CupertinoIcons.plus,
                                size: 18,
                              ),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'This is more detailed of the Product. you can write here more about the Product ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff4c53a5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        const Text(
                          'Size: ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff4c53a5),
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            for (int i = 5; i < 10; i++)
                              Container(
                                width: 30,
                                height: 30,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        spreadRadius: 2,
                                        blurRadius: 8),
                                  ],
                                ),
                                child: Text(
                                  '$i',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff4c53a5),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        const Text(
                          'Color: ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff4c53a5),
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            for (int i = 0; i < 5; i++)
                              Container(
                                width: 30,
                                height: 30,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Color1[i],
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        spreadRadius: 2,
                                        blurRadius: 8),
                                  ],
                                ),
                              ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
      bottomNavigationBar: const ItembottomNavigationBar(),
    );
  }
}
