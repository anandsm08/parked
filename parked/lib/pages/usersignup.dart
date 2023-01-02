import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:parked/pages/userlogin.dart';

import '../utils/loginoptcards.dart';

class UserSignup extends StatefulWidget {
  const UserSignup({super.key});

  @override
  State<UserSignup> createState() => _UserSignupState();
}

class _UserSignupState extends State<UserSignup> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return SafeArea(
      top: true,
      child: Scaffold(
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
                      style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Create your account',
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
                          hintText: 'Enter your email'),
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
                          hintText: 'Enter your password'),
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
                          hintText: 'Confirm your password'),
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
                    'Sign up',
                    style: TextStyle(fontSize: 24),
                  )),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text(
                  "Signup using ",
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
                        text: "Already a user? ",
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 18),
                        children: [
                      TextSpan(
                          text: "Login",
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => const UserLogin()))
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
