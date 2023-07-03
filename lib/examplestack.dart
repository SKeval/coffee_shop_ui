import 'package:flutter/material.dart';

class ExampleStack extends StatefulWidget {
  const ExampleStack({Key? key}) : super(key: key);

  @override
  State<ExampleStack> createState() => _ExampleStackState();
}

class _ExampleStackState extends State<ExampleStack> {
  Widget emptybox({required Color c, double h = 100, double w = 100}) {
    return Container(
      color: c,
      height: h,
      width: w,
    );
  }

  Widget mainContent() {
    return Stack(
      children: [
        //  Positioned(top: 20, child: emptybox(c: Colors.black, h: 140, w: 140)),
        //  Center(child: emptybox(c: Colors.yellow, h: 120, w: 120)),
        emptybox(c: Colors.green),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            color: Colors.redAccent,
            height: 100,
            width: 100,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example Of Stack"),
      ),
      body: mainContent(),
    );
  }
}
