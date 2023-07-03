// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/Common/icon.dart';
import 'package:flutter_ex_stack/Common/txt.dart';
import 'package:flutter_ex_stack/Structure/Footer_Page2.dart';
import 'package:flutter_ex_stack/utils/appcolor.dart';

class Down2 extends StatefulWidget {
  const Down2({
    Key? key,
  }) : super(key: key);

  @override
  State<Down2> createState() => _Down2State();
}

class _Down2State extends State<Down2> {

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                _selectedIndex = 0;
              },
              child: Container(
                decoration: BoxDecoration(
                    color: _selectedIndex == 0? greenColor : Color.fromARGB(255, 237, 247, 237),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                height: 40,
                width: 105,
                child: Center(
                  child: txt(
                    title: "Small",
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 237, 247, 237),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 40,
                width: 105,
                child: Center(
                  child: txt(
                    title: "Medium",
                    size: 15,
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 237, 247, 237),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: 40,
              width: 105,
              child: Center(
                child: txt(
                  title: "Large",
                  size: 15,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 15),
          child: Row(
            children: [
              txt(title: "About", size: 20, weight: FontWeight.bold),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15),
          child: Row(
            children: [
              RichText(
                  text: TextSpan(
                      text:
                          "Cappuccino is an espresso-based coffee drink\n that is traditionally prepared with steamed milk\n foam.Variations of the drink involve .....",
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                      children: [
                    TextSpan(
                        text: "Read more",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: greenColor))
                  ]))
            ],
          ),
        ),
      ],
    );
  }
}
