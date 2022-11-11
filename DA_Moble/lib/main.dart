import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Caidat.dart';
import 'package:flutter_application_1/Screen/Chinhsuahoso.dart';
import 'package:flutter_application_1/Screen/Dangky.dart';
import 'package:flutter_application_1/Screen/Laymatkhau.dart';
import 'package:flutter_application_1/Screen/Quanlytaikhoan.dart';
import 'package:flutter_application_1/Screen/Quenmatkhau.dart';

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
      home: const CaidatScreen(),
    );
  }
}
