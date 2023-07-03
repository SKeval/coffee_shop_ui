// ignore_for_file: camel_case_types, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/Common/icon.dart';
import 'package:flutter_ex_stack/Common/txt.dart';
import 'package:flutter_ex_stack/Page2.dart';
import 'package:flutter_ex_stack/utils/appcolor.dart';
import 'package:flutter_ex_stack/utils/image.dart';

class mid1 extends StatefulWidget {
  const mid1({Key? key}) : super(key: key);

  @override
  State<mid1> createState() => _mid1State();
}

class _mid1State extends State<mid1> {
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
                  image: AssetImage("assets/img/coffee1 .jpg"),
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
          child: txt(
              title: "with low fat milk", size: 10, weight: FontWeight.w500),
        ),
        Positioned(
            top: 200,
            left: 22,
            child: txt(title: "\$ 4.32", size: 15, weight: FontWeight.w600)),
        Positioned(
            top: 190,
            left: 105,
            child: SizedBox(
              width: 35,
              height: 35,
              child: FloatingActionButton(
                heroTag: "btn2",
                backgroundColor: greenColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => secondPage(
                          data: const {
                            "title": "Cappuccino",
                            "image": "assets/img/coffee1 .jpg",
                            "subtitle": "with low fat milk",
                            "price": "\$4.32."
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
     Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Positioned(
            top: 260,
            left: 170,
            child: Container(
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
          ),
          Positioned(
            top: 275,
            left: 174,
            child: Container(
              width: 145,
              height: 130,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('assets/img/coffee1.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
              top: 417,
              left: 185,
              child:
                  txt(title: "Cappuccino", size: 16, weight: FontWeight.w500)),
          Positioned(
              top: 440,
              left: 186,
              child: txt(
                  title: "with low fat milk",
                  size: 8.5,
                  weight: FontWeight.w400)),
          Positioned(
              top: 465,
              left: 185,
              child: txt(title: "\$ 4.32", size: 15, weight: FontWeight.w600)),
          Positioned(
              top: 450,
              left: 275,
              child: SizedBox(
                width: 35,
                height: 35,
                child: FloatingActionButton(
                  backgroundColor: greenColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => secondPage(
                            data: {
                              "image": "assets/img/coffee1.jpg",
                              "subtitle": "with low fat milk",
                              "price": "\$4.32"
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
            top: 284,
            left: 255,
            child: Container(
              decoration: BoxDecoration(
                  color: creamColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              width: 50,
              height: 20,
            ),
          ),
          icons(
            icon: Icons.star,
            top: 286,
            left: 263,
            color: Colors.white,
            size: 14,
          ),
          Positioned(
              top: 288,
              left: 280,
              child: txt(
                title: "4.7",
                color: Colors.white,
                size: 10,
              ))
        ],
      ),
    );
  

*/