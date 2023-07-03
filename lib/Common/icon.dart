// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class icons extends StatefulWidget {
  IconData? icon;
  Color color;
  double size;
  double? top;
  double? left;
  double? right;
  double? bottom;
  double? h;
  double? w;
  ImageProvider? image;

  icons(
      {Key? key,
      this.icon,
      this.image,
      this.top,
      this.color = Colors.black,
      this.left,
      this.h,
      this.w,
      this.size = 20,
      this.right,
      this.bottom})
      : super(key: key);

  @override
  State<icons> createState() => _iconsState();
}

class _iconsState extends State<icons> {
  @override
  Widget build(BuildContext context) {
    return widget.icon != null
        ? Icon(
            widget.icon,
            color: widget.color,
            size: widget.size,
          )
        : Image(
            image: widget.image!,
            height: widget.h,
            width: widget.w,
          );
  }
}
