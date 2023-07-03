// ignore_for_file: file_names, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/Common/txt.dart';
import 'package:flutter_ex_stack/utils/appcolor.dart';

class footer2 extends StatefulWidget {
  String? price;
  footer2({Key? key, this.price}) : super(key: key);

  @override
  State<footer2> createState() => _footer2State();
}

class _footer2State extends State<footer2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Container(
        decoration: BoxDecoration(
            color: greenColor,
            borderRadius: const BorderRadius.all(Radius.circular(40))),
        height: 75,
        width: 330,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            txt(
              title: "Add to Cart",
              size: 17,
              weight: FontWeight.bold,
              color: Colors.white,
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 22, bottom: 22, right: 20, left: 20.0),
              child: VerticalDivider(
                color: Colors.white,
                width: 1,
                thickness: 0.5,
              ),
            ),
            txt(
              title: "\$ ${widget.price}",
              size: 16,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
