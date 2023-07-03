// ignore_for_file: file_names, camel_case_types, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/Common/icon.dart';
import 'package:flutter_ex_stack/Common/txt.dart';
import 'package:flutter_ex_stack/Structure/Footer_Page2.dart';
import 'package:flutter_ex_stack/Structure/Head_Page2.dart';
import 'package:flutter_ex_stack/Structure/Middle_Page2.dart';
import 'package:flutter_ex_stack/utils/appcolor.dart';

class secondPage extends StatefulWidget {
  Map<String, String> data = {};
  secondPage({Key? key, required this.data}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.data["image"]!),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.amberAccent,
                  width: double.infinity,
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              width: double.infinity,
              height: 500,
              child: middle2(
                price: widget.data["price"],
              ),
            ),
          ),
          head2(
            title: widget.data["title"]!,
            subtitle: widget.data["subtitle"]!,
          ),
        ],
      ),
    );
  }
}
