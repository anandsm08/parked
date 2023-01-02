import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parked/pages/sos.dart';

import '../pages/userprofile.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 20,
            width: screenwidth * 0.3,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            width: screenwidth * 0.34,
            child: const Text(
              'P A R K E D',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            height: 40,
            width: screenwidth * 0.3,
            child: GestureDetector(
              child: const CircleAvatar(
                backgroundColor: Colors.red,
                radius: 25,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  child: Text(
                    'SOS',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
              onTap: () => Get.to(() => const sosPage()),
            ),
          ),
        ],
      ),
    );
  }
}
