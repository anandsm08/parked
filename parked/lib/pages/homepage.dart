import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:parked/pages/userprofile.dart';
import 'package:parked/utils/topbar.dart';

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
    return Scaffold(
      body: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(),
              SizedBox(
                height: screenheight * 0.1,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Hello, Ace",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: screenheight * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintText: 'Find parking spot.',
                      prefixIcon: const Icon(Icons.location_pin)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                height: screenheight * 0.4,
              ),
              GestureDetector(
                child: Center(
                  child: Container(
                    height: screenheight * 0.07,
                    width: screenwidth * 0.5,
                    decoration: BoxDecoration(
                        color: Colors.green.shade600,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      'Reserve',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    )),
                  ),
                ),
                onTap: () => print('slot reserved'),
              ),
            ],
          )),

      // bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}
