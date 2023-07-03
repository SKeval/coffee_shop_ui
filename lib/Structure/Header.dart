// ignore_for_file: file_names, camel_case_types, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/utils/appcolor.dart';

class head extends StatefulWidget {
  const head({Key? key}) : super(key: key);

  @override
  State<head> createState() => _headState();
}

// ignore: camel_case_types
class _headState extends State<head> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: Image.asset('assets/img/pic.jpeg').image,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_rounded,
                color: greenColor,
              ),
              const Text(
                "Surat,",
                style: TextStyle(fontSize: 16),
              ),
              const Text(
                "Gujarat",
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.7)),
              )
            ],
          ),
          const Icon(Icons.notifications_outlined)
        ],
      ),
    );
  }
}
