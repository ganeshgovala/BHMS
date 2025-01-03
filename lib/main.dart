// ignore_for_file: prefer_const_constructors

import 'package:bhms/pages/HomePage.dart';
import 'package:bhms/pages/LoginPage.dart';
import 'package:bhms/pages/OpeningPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}