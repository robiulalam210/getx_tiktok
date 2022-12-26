import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tiktok/view/screens/Home.dart';
import 'package:getx_tiktok/view/screens/auth/login_screen.dart';
import 'package:getx_tiktok/view/screens/auth/signup_screen.dart';

import 'constants.dart';
import 'controller/auth_controller.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    Get.put(AuthController());

  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(

          scaffoldBackgroundColor: backgroundColor
      ),
      home: HomeScreen(),
    );
  }
}
