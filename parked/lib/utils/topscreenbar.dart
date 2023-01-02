import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parked/pages/homepage.dart';

class topScreenBar extends StatelessWidget {
  const topScreenBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 20,
            child: GestureDetector(
                child: Icon(Icons.arrow_back_rounded),
                onTap: () => Get.to(() => const HomePage())),
          ),
          Container(
            height: 20,
            width: screenwidth * 0.3,
            child: Text(
              'P A R K E D',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  fontSize: 20),
            ),
          ),
          Container(
            height: 20,
          )
        ],
      ),
    );
  }
}
