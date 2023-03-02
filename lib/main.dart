// ignore_for_file: prefer_const_constructors

import 'package:aasif_api/Lec02/lec02home.dart';
import 'package:aasif_api/Lec08/home.dart';
import 'package:flutter/material.dart';

import 'Lec07/lec07.dart';
import 'Lec09/babadevs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      // home: MySelfApi(),
      // home: ApiByMySelf2(),
      home: ByMySelfComplex(),
    );
  }
}
