import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:parked/pages/usersignup.dart';
import 'package:parked/utils/loginoptcards.dart';
import 'package:get/get.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: screenwidth,
              child: Center(
                child: Image.asset(
                  'lib/assets/image1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Sign into your account',
                    style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Enter your email',
                        prefixIcon: Icon(Icons.email_sharp)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Enter your password',
                        prefixIcon: const Icon(Icons.password_outlined)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Text('Forgot your password?'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: screenheight * 0.07,
                width: screenwidth * 0.4,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 24),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                "Login with ",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LoginOptions(
                  optcolor: Colors.grey.shade300,
                  opticon: 'lib/assets/phone-logo.png',
                ),
                LoginOptions(
                  optcolor: Colors.grey.shade300,
                  opticon: 'lib/assets/google-logo-black.png',
                ),
                LoginOptions(
                  optcolor: Colors.grey.shade300,
                  opticon: 'lib/assets/apple-logo.png',
                )
              ],
            ),
            const SizedBox(height: 40),
            Center(
              child: RichText(
                  text: TextSpan(
                      text: "New user? ",
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 18),
                      children: [
                    TextSpan(
                        text: "Sign up",
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(() => UserSignup()))
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
