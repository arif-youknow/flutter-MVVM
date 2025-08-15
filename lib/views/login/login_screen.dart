import 'package:flutter/material.dart';
import 'package:mvvm_project/core/utils/image_helper.dart';
import 'package:mvvm_project/core/utils/text_helper.dart';

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
            ImageHelper.customImage(img: "onbordingimg.png"),
            //SizedBox(height: 5,),
            ImageHelper.customImage(img: "login_logo.png"),
            //SizedBox(height: 5,),
            TextHelper.customText(
              text: "India’s last minute app",
              color: Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 20,
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0XFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Color(0XFF000000).withValues(alpha: 0.3),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                children: [
               
                  Text("hello")
                ],
               ),
             )
            ),
          ],
        ),
      ),
    );
  }
}
