// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/Common/icon.dart';
import 'package:flutter_ex_stack/Common/txt.dart';
import 'package:flutter_ex_stack/Structure/Footer.dart';
import 'package:flutter_ex_stack/Structure/Header.dart';
import 'package:flutter_ex_stack/Structure/Middle.dart';
import 'package:flutter_ex_stack/Structure/MiddleDown.dart';
import 'package:flutter_ex_stack/Structure/MiddleLeft.dart';
import 'package:flutter_ex_stack/Structure/MiddleRight.dart';
import 'package:flutter_ex_stack/utils/appcolor.dart';

// ignore: camel_case_types
class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

// ignore: camel_case_types
class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: head(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 35, right: 35),
                        child: Row(
                          children: [
                            txt(
                              title: "Good morning, Keval",
                              size: 25,
                              weight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 35, right: 35),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 239, 239, 239),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          height: 50,
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                icons(
                                  icon: Icons.search,
                                  size: 25,
                                ),
                                txt(
                                  title: "Search Coffee...",
                                  color:
                                      const Color.fromRGBO(15, 15, 15, 0.729),
                                ),
                                FloatingActionButton(
                                    backgroundColor: creamColor,
                                    onPressed: () {},
                                    child: const Icon(Icons.settings)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 35, right: 20),
                        child: Row(
                          children: [
                            txt(
                              title: "Categories",
                              size: 20,
                              weight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                      const middle(),
                      const Padding(
                        padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                        child: //SingleChildScrollView(
                            // scrollDirection: Axis.horizontal,
                            //child:
                            Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            mid(),
                            mid1(),
                            //mid1(),
                          ],
                        ),
                        // ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 25, left: 35, right: 10),
                        child: Row(
                          children: [
                            txt(
                              title: "Special Offer",
                              size: 20,
                              weight: FontWeight.bold,
                            ),
                            icons(
                              image:
                                  Image.asset('assets/icons/flame.png').image,
                              h: 26,
                              w: 26,
                            )
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          down(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const footer(),
        ],
      ),
    );
  }
}
