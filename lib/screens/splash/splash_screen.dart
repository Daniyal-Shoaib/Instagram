import 'dart:async';
import 'package:flutter/material.dart';

import '../../helpers/uihelper.dart';

import '../insta_auth/auth.dart';
class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
       const Duration(seconds: 3),
            (){
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder:(context)=> const Auth(),
                  )
              );
            }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imgUrl: "InstaLogoPic.png"),
            const SizedBox(height: 10,),
            UiHelper.customImage(imgUrl: "InstaLogoText.png"),

        ],),
      ),
    );
  }
}