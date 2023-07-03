// ignore_for_file: camel_case_types, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/Common/icon.dart';
import 'package:flutter_ex_stack/Common/txt.dart';
import 'package:flutter_ex_stack/utils/appcolor.dart';

// ignore: camel_case_types
class middle extends StatefulWidget {
  const middle({Key? key}) : super(key: key);

  @override
  State<middle> createState() => _middleState();
}

class _middleState extends State<middle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  height: 40,
                  width: 113,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      icons(icon: Icons.coffee_rounded, color: Colors.white),
                      txt(
                        title: "Cappuccino",
                        size: 12,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    //color: greenColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 40,
                width: 105,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    icons(
                      image: Image.asset("assets/icons/cold.png").image,
                      h: 25,
                      w: 25,
                    ),
                    txt(
                      title: "Cold Brew",
                      size: 12,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    // color: greenColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 40,
                width: 105,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    icons(
                      image: Image.asset("assets/icons/ex.png").image,
                      h: 25,
                      w: 25,
                    ),
                    txt(
                      title: "Expresso",
                      size: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );

    /*Stack(
      children: [
        Positioned(
          top: 212,
          left: 10,
          child: Container(
            decoration: BoxDecoration(
                color: greenColor,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            height: 40,
            width: 113,
          ),
        ),
        Positioned(
          top: 212,
          left: 126,
          child: Container(
            decoration: BoxDecoration(
                //color: greenColor,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            height: 40,
            width: 105,
          ),
        ),
        Positioned(
          top: 212,
          left: 234,
          child: Container(
            decoration: BoxDecoration(
                // color: greenColor,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            height: 40,
            width: 105,
          ),
        ),
        icons(
          icon: Icons.coffee_rounded,
          left: 22,
          top: 220,
          color: Colors.white,
        ),
        icons(
          image: Image.asset("assets/icons/cold.png").image,
          left: 140,
          top: 216,
          h: 25,
          w: 25,
        ),
        icons(
          image: Image.asset("assets/icons/ex.png").image,
          left: 247,
          top: 215,
          h: 25,
          w: 25,
        ),
        Positioned(
          top: 222,
          left: 45,
          child: txt(
            title: "Cappuccino",
            size: 12,
            color: Colors.white,
          ),
        ),
        Positioned(
          top: 223,
          left: 165,
          child: txt(
            title: "Cold Brew",
            size: 12,
          ),
        ),
        Positioned(
          top: 223,
          left: 275,
          child: txt(
            title: "Expresso",
            size: 12,
          ),
        ),
      ],
    );*/
  }
}
