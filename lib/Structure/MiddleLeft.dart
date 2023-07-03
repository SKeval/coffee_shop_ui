// ignore_for_file: camel_case_types, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/Common/txt.dart';
import 'package:flutter_ex_stack/Page2.dart';
import 'package:flutter_ex_stack/utils/appcolor.dart';
import 'package:flutter_ex_stack/utils/image.dart';
import 'package:flutter_ex_stack/Common/icon.dart';

class mid extends StatefulWidget {
  const mid({Key? key}) : super(key: key);

  @override
  State<mid> createState() => _midState();
}

class _midState extends State<mid> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 162,
          height: 250,
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
          top: 10,
          left: 8,
          child: Container(
            width: 145,
            height: 130,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage("assets/img/cappuccino .jpg"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          top: 145,
          left: 19,
          child: txt(title: "Cappuccino", size: 16, weight: FontWeight.bold),
        ),
        Positioned(
          top: 172,
          left: 20,
          child:
              txt(title: "with chocolates", size: 10, weight: FontWeight.w500),
        ),
        Positioned(
            top: 200,
            left: 22,
            child: txt(title: "\$ 5.12", size: 15, weight: FontWeight.w600)),
        Positioned(
            top: 190,
            left: 105,
            child: SizedBox(
              width: 35,
              height: 35,
              child: FloatingActionButton(
                heroTag: "btn1",
                backgroundColor: greenColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => secondPage(
                          data: const {
                            "title": "Cappuccino",
                            "image": "assets/img/cappuccino .jpg",
                            "subtitle": "with chocolate",
                            "price": "\$5.12"
                          },
                        ),
                      ));
                },
                child: txt(
                  title: "+",
                  color: Colors.white,
                  size: 25,
                ),
              ),
            )),
        Positioned(
          top: 20,
          left: 90,
          child: Container(
            decoration: BoxDecoration(
                color: creamColor,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            width: 50,
            height: 20,
          ),
        ),
        Positioned(
          top: 23,
          left: 97,
          child: icons(
            icon: Icons.star,
            color: Colors.white,
            size: 14,
          ),
        ),
        Positioned(
            top: 24,
            left: 115,
            child: txt(
              title: "4.7",
              color: Colors.white,
              size: 11,
            ))
      ],
    );
  }
}
