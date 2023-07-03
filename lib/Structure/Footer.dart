// ignore_for_file: file_names, camel_case_types, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/Common/icon.dart';
import 'package:flutter_ex_stack/Common/txt.dart';
import 'package:flutter_ex_stack/utils/appcolor.dart';

class footer extends StatefulWidget {
  const footer({Key? key}) : super(key: key);

  @override
  State<footer> createState() => _footerState();
}

// ignore: camel_case_types
class _footerState extends State<footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: icons(
                    icon: Icons.home,
                    color: greenColor,
                    size: 30,
                    bottom: 40,
                    left: 14,
                  ),
                ),
                txt(
                  title: "Home",
                  color: greenColor,
                  size: 10,
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: icons(
                    image: Image.asset('assets/icons/heart.png').image,
                    color: Colors.black,
                    h: 28,
                    w: 28,
                  ),
                ),
                txt(
                  title: "Favourite",
                  size: 10,
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: icons(
                    icon: Icons.shopping_cart,
                    size: 30,
                    bottom: 40,
                    left: 200,
                  ),
                ),
                txt(
                  title: "Cart",
                  size: 10,
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: icons(
                    icon: Icons.person,
                    size: 30,
                    bottom: 40,
                    left: 280,
                  ),
                ),
                txt(
                  title: "Profile",
                  size: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );

    /*
    Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            width: 390,
            height: 90,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        icons(
          image: Image.asset('assets/icons/heart.png').image,
          color: Colors.black,
          h: 28,
          w: 28,
          bottom: 40,
          left: 105,
        ),
        icons(
          icon: Icons.shopping_cart,
          size: 30,
          bottom: 40,
          left: 200,
        ),
        icons(
          icon: Icons.home,
          color: greenColor,
          size: 30,
          bottom: 40,
          left: 14,
        ),
        icons(
          icon: Icons.person,
          size: 30,
          bottom: 40,
          left: 280,
        ),
        Positioned(
            bottom: 28,
            left: 16,
            child: txt(
              title: "Home",
              color: greenColor,
              size: 10,
            )),
        Positioned(
            bottom: 28,
            left: 99,
            child: txt(
              title: "Favourite",
              size: 10,
            )),
        Positioned(
            bottom: 28,
            left: 205,
            child: txt(
              title: "Cart",
              size: 10,
            )),
        Positioned(
            bottom: 28,
            left: 280,
            child: txt(
              title: "Profile",
              size: 10,
            )),
      ],
    );*/
  }
}
