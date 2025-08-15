import 'dart:async' as async;
import 'package:flutter/material.dart';
import 'package:mvvm_project/core/constant/appcolor.dart';
import 'package:mvvm_project/core/utils/image_helper.dart';
import 'package:mvvm_project/views/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    super.initState();
    async.Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
     
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.scaffoldBG,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ImageHelper.customImage(img: 'logo.png')],
        ),
      ),
    );
  }
}
