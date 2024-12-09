import 'package:flutter/material.dart';
import 'package:instagram/Screens/Login/login_screen.dart';
import 'package:instagram/Screens/signup/signup_screen.dart';
import '../../helpers/uihelper.dart';
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const  Spacer(
             flex: 6,
            ),
            UiHelper.customImage(imgUrl: 'InstaLogoText.png'),
           const  SizedBox(height: 30,),
            UiHelper.customImage(imgUrl: 'OvalProfile.png'),
            const  SizedBox(height: 5,),
          const  Text("daniyal_s",style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),),
            const  SizedBox(height: 30,),
            UiHelper.customButton(
              callback:(){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>const LoginScreen(),
                    )
                );
              },
              buttonName: 'login',
              width: 307,
              height: 44,
            ),
            const  SizedBox(height: 10,),
            UiHelper.customTextButton(
                text: 'Switch accounts',
                callback: (){}
            ),
           const  Spacer(
              flex: 5,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  UiHelper.customTextButton(text: "Sign Up", callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=>const SignUpScreen(),
                        )
                    );
                  })
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
