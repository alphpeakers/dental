import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/auth/login.dart';
import 'view/auth/register.dart';
// import 'view/auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mainpage (),
    );
  }
}
