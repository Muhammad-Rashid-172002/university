import 'package:flutter/material.dart';
import 'package:flutter_app/onboardingScreen/homeScreen.dart';
import 'package:flutter_app/onboardingScreen/loginScreen/done.dart';
import 'package:flutter_app/onboardingScreen/loginScreen/login.dart';
import 'package:flutter_app/onboardingScreen/loginScreen/login2.dart';
import 'package:flutter_app/onboardingScreen/loginScreen/login3.dart';
import 'package:flutter_app/onboardingScreen/loginScreen/login4.dart';
import 'package:flutter_app/onboardingScreen/pepsi_logo.dart';
import 'package:flutter_app/onboardingScreen/screen2.dart';
import 'package:flutter_app/product/pro1.dart';
import 'package:flutter_app/product/product1.dart';
import 'package:flutter_app/screen3.dart';
import 'package:flutter_app/screen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const //Pro1()
          //PepsiLogo()
          //Product1(),
          //DoneScreen()
          //Login4(),
          //Login3(),
          //Login2(),
          //LoginScreen(),
          //Screen4(),
          //Screen3(),
          //Screen2(),
          Homescreen(),
    );
  }
}
