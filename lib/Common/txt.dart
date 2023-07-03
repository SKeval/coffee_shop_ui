// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// ignore: camel_case_types
class txt extends StatefulWidget {
  String title;
  double size;
  FontWeight weight;
  Color color;

  txt(
      {Key? key,
      required this.title,
      this.size = 16,
      this.color = Colors.black,
      this.weight = FontWeight.normal})
      : super(key: key);

  @override
  State<txt> createState() => _txtState();
}

// ignore: camel_case_types
class _txtState extends State<txt> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: TextStyle(
          fontSize: widget.size,
          fontWeight: widget.weight,
          color: widget.color),
    );
  }
}
