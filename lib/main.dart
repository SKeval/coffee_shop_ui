// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_ex_stack/Page1.dart';
import 'package:flutter_ex_stack/Page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const mainPage(),
    );
  }
}
