import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Dangky.dart';
import 'package:flutter_application_1/Screen/Dangnhap.dart';
import 'package:flutter_application_1/Screen/Laymatkhau.dart';
import 'package:flutter_application_1/Screen/Quanlitaikhoan.dart';
import 'package:flutter_application_1/Screen/Trangchu.dart';

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
      home: const LaymatkhauScreen(),
    );
  }
}
