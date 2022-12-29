import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginOptions extends StatelessWidget {
  final optcolor;
  final opticon;

  const LoginOptions({
    Key? key,
    required this.optcolor,
    required this.opticon,
  });

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Container(
      height: 40,
      width: screenwidth * 0.25,
      decoration: BoxDecoration(color: optcolor),
    );
  }
}
