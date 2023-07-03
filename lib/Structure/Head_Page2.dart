// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/Common/icon.dart';
import 'package:flutter_ex_stack/Common/txt.dart';
import 'package:flutter_ex_stack/utils/appcolor.dart';

class head2 extends StatefulWidget {
  final String title;
  final String subtitle;

  const head2({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  State<head2> createState() => _head2State();
}

class _head2State extends State<head2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 50,
          right: 30,
          child: SizedBox(
              height: 40,
              width: 40,
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: icons(
                    image: Image.asset('assets/icons/heart.png').image,
                    h: 20,
                    w: 20,
                  ))),
        ),
        Positioned(
          top: 50,
          left: 30,
          child: SizedBox(
              height: 35,
              width: 35,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: icons(
                  icon: Icons.arrow_back,
                ),
              )),
        ),
        Positioned(
          top: 270,
          left: 32,
          child: txt(
            title: widget.title,
            size: 30,
            color: Colors.white,
            weight: FontWeight.bold,
          ),
        ),
        Positioned(
          top: 310,
          left: 35,
          child: txt(
            title: widget.subtitle,
            size: 12,
            color: Colors.white,
            weight: FontWeight.w400,
          ),
        ),
        Positioned(
          top: 280,
          left: 305,
          child: Container(
            decoration: BoxDecoration(
                color: creamColor,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            width: 50,
            height: 22,
          ),
        ),
        Positioned(
            top: 286,
            left: 330,
            child: txt(
              title: "4.7",
              color: Colors.white,
              size: 10,
            )),
        Positioned(
          top: 284,
          left: 313,
          child: icons(
            icon: Icons.star,
            color: Colors.white,
            size: 14,
          ),
        ),
      ],
    );
  }
}
