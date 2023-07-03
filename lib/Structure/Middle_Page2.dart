// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/Common/icon.dart';
import 'package:flutter_ex_stack/Common/txt.dart';
import 'package:flutter_ex_stack/Structure/Footer_Page2.dart';
import 'package:flutter_ex_stack/Structure/MiddleDown_Page2.dart';

class middle2 extends StatefulWidget {
  final String? price;
  const middle2({Key? key, this.price}) : super(key: key);

  @override
  State<middle2> createState() => _middle2State();
}

class _middle2State extends State<middle2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 239, 239, 239),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            height: 60,
            width: 360,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    icons(
                      image: Image.asset('assets/icons/coffee.png').image,
                      h: 17,
                      w: 17,
                    ),
                    txt(
                      title: " Coffee",
                      size: 15,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 15, top: 15),
                  child: VerticalDivider(
                    width: 1,
                    thickness: 0.5,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    icons(
                      image: Image.asset('assets/icons/chocolate.png').image,
                      h: 17,
                      w: 17,
                    ),
                    txt(
                      title: " Chocolate",
                      size: 15,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 15, top: 15),
                  child: VerticalDivider(
                    width: 1,
                    thickness: 0.5,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    icons(
                      image: Image.asset('assets/icons/roasted.png').image,
                      h: 17,
                      w: 17,
                    ),
                    txt(
                      title: " Medium Roasted",
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33, top: 30),
            child: Row(
              children: [
                txt(title: "Coffee Size", size: 22, weight: FontWeight.bold),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25, top: 20, right: 28),
              child: Column(
                children: [const Down2(), footer2(price: widget.price)],
              )),
        ],
      ),
    );
  }
}
