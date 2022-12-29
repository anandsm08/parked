import 'package:flutter/material.dart';
import 'package:parked/pages/homepage.dart';
import 'package:parked/pages/userlogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(top: true, child: UserLogin()),
    );
  }
}
