// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:remidial_app_1/pages/startPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}