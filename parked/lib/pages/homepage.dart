import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:parked/pages/userprofile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 20,
                    width: screenwidth * 0.3,
                  ),
                  Container(
                    height: 20,
                    width: screenwidth * 0.3,
                    child: Text(
                      'P A R K E D',
                      style: TextStyle(color: Colors.yellowAccent),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: screenwidth * 0.3,
                    child: GestureDetector(
                      child: CircleAvatar(radius: 10),
                      onTap: () => Get.to(() => userProfile()),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
