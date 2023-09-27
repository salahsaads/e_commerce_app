import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app/wedget/Categories.dart';
import 'package:e_commerce_app/wedget/Items.dart';
import 'package:e_commerce_app/wedget/home_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Home_App_Bar(),

          ///'Search
          Container(
            //height: 800,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Color(0xffedecf2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Search here...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),

                    //  //Categorie
                    const Spacer(),
                    const Icon(
                      Icons.camera_alt,
                      size: 27,
                      color: Color(0xff4c53a5),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4c53a5),
                  ),
                ),
              ),

              //Categorie
              const Categories(),

              //Item
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Best Selling',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4c53a5),
                  ),
                ),
              )

              //Items wedget
              ,
              const Items(),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
          height: 70,
          backgroundColor: Colors.transparent,
          color: const Color(0xff4c53a5),
          items: const [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              CupertinoIcons.cart_fill,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              CupertinoIcons.list_bullet,
              size: 30,
              color: Colors.white,
            ),
          ]),
    );
  }
}
