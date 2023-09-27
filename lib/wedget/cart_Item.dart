import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CertItams extends StatelessWidget {
  const CertItams({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 4; i++)
          Container(
            height: 110,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Radio(
                  value: "",
                  groupValue: "",
                  onChanged: (index) {},
                  activeColor: const Color(0xff4c53a5),
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(right: 10),
                  child: Image.asset('images/$i.png'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Product Title',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4c53a5),
                        ),
                      ),
                      Text(
                        "\$56",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4c53a5),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: Icon(
                          Icons.delete_sharp,
                          color: Colors.red,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  const BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  )
                                ]),
                            child: const Icon(
                              CupertinoIcons.plus,
                              size: 20,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Text(
                              "01",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xff4c53a5),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  const BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  )
                                ]),
                            child: const Icon(
                              CupertinoIcons.minus,
                              size: 20,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
