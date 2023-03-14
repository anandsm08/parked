import 'package:flutter/material.dart';
//import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:parked/pages/homepage.dart';
import 'package:parked/pages/userlogin.dart';
import 'package:parked/pages/userprofile.dart';
import 'package:parked/pages/usersignup.dart';
import 'package:parked/utils/bottomnavbar.dart';

import 'package:flutter_config/flutter_config.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  await FlutterConfig.loadEnvVariables();
  //await dotenv.load(fileName: "lib/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SafeArea(child: bottomNav()),
      //SafeArea(top: true, child: userProfile()),
      // routes: {
      //   '':
      // } ,
    );
  }
}
