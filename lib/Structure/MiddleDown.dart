// ignore_for_file: camel_case_types, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/Common/icon.dart';
import 'package:flutter_ex_stack/Common/txt.dart';
import 'package:flutter_ex_stack/utils/appcolor.dart';

class down extends StatefulWidget {
  const down({Key? key}) : super(key: key);

  @override
  State<down> createState() => _downState();
}

class _downState extends State<down> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 341,
                  height: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(151, 233, 243, 223),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 20,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/img/Coffee2 .jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        boxShadow: [
                          BoxShadow(color: Color.fromARGB(31, 60, 22, 22))
                        ]),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 95,
                  child: Container(
                    decoration: BoxDecoration(
                        color: creamColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(11))),
                    width: 90,
                    height: 20,
                  ),
                ),
                Positioned(
                    top: 45,
                    right: 105,
                    child: txt(
                        title: "Discount Sales",
                        color: Colors.white,
                        size: 10,
                        weight: FontWeight.w500)),
                Positioned(
                    top: 70,
                    right: 40,
                    child: txt(
                      title: "Get three ice flavoured\ncappuccinos for the ",
                      size: 14,
                      weight: FontWeight.w700,
                    ))
              ],
            ),
          ],
        )

        /*
      Stack(
        children: [
          Positioned(
              top: 540,
              child: txt(title: "Special Offer", weight: FontWeight.bold)),
          icons(
            image: Image.asset('assets/icons/flame.png').image,
            h: 18,
            w: 18,
            top: 540,
            left: 95,
          ),
          Positioned(
            top: 570,
            child: Container(
              width: 320,
              height: 150,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(color: Color.fromARGB(151, 233, 243, 223))
                  ]),
            ),
          ),
          Positioned(
            top: 585,
            left: 10,
            child: Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/coffee2.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(color: Color.fromARGB(31, 60, 22, 22))
                  ]),
            ),
          ),
          Positioned(
            top: 612,
            left: 145,
            child: Container(
              decoration: BoxDecoration(
                  color: creamColor,
                  borderRadius: const BorderRadius.all(Radius.circular(11))),
              width: 90,
              height: 20,
            ),
          ),
          Positioned(
              top: 616.5,
              left: 160,
              child: txt(
                title: "Discount Sales",
                color: Colors.white,
                size: 10,
              )),
          Positioned(
              top: 640,
              left: 150,
              child: txt(
                title: "Get three ice flavoured\ncappuccinos for the ",
                size: 14,
                weight: FontWeight.w500,
              ))
        ],
      ),
      */
        );
  }
}
