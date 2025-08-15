import 'package:flutter/material.dart';
import 'package:mvvm_project/core/utils/image_helper.dart';
import 'package:mvvm_project/core/utils/text_helper.dart';
import 'package:mvvm_project/views/bottomnav/bottomnav_screen.dart';

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
                    Text("hello"),
                    SizedBox(height: 10),
                    Text("0xxx093"),
                    SizedBox(height: 10),

                    //button
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomnavScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextHelper.customText(
                              text: "Login with",
                              color: Color(0XFFFFFFFF),
                              fontweight: FontWeight.w900,
                              fontsize: 16,
                            ),
                            SizedBox(width: 5),
                            SizedBox(
                              height: 20,
                              child: ImageHelper.customImage(img: "zomato.png"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    TextHelper.customText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: Color(0XFF9C9C9C),
                      fontweight: FontWeight.w600,
                      fontsize: 10,
                    ),
                    SizedBox(height: 10),

                    TextHelper.customText(
                      text: "or login with phone number",
                      color: Color(0XFF269237),
                      fontweight: FontWeight.normal,
                      fontsize: 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
