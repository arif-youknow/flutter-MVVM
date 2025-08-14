

import 'package:flutter/material.dart';
import 'package:mvvm_project/core/utils/uihelper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

     body: Center(
       child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.customImage(img: "onbordingimg.png")
        ],
       
           
       ),
     ),


    );
  }
}