import 'package:flutter/material.dart';
import 'package:instagram/Screens/Login/login_screen.dart';
import '../../helpers/uihelper.dart';

import '../../helpers/uihelper.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const   Spacer(
              flex: 2,
            ),
            UiHelper.customImage(imgUrl: "InstaLogoText.png"),
            const SizedBox(
              height: 20,
            ),
            UiHelper.customTextField(
              controller: firstNameController,
              text: "First Name",
              toHide: false,
            ),
            const SizedBox(
              height: 15,
            ),
            UiHelper.customTextField(
              controller: lastNameController,
              text: "Last Name",
              toHide: false,
            ),
            const SizedBox(
              height: 15,
            ),
            UiHelper.customTextField(
              controller: emailController,
              text: "Email",
              toHide: false,
            ),
            const SizedBox(
              height: 15,
            ),
            UiHelper.customTextField(
              controller: passwordController,
              text: "Password",
              toHide: true,
            ),

            const SizedBox(
              height: 30,
            ),
            UiHelper.customButton(
              callback: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>const LoginScreen(),
                    )
                );
              },
              buttonName: "Sign Up",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customImage(imgUrl: 'fb.png'),
                UiHelper.customTextButton(
                    text: 'Sign Up with Facebook', callback: () {})
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "OR",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Have an account?",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                UiHelper.customTextButton(text: "login", callback: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>const LoginScreen(),
                      )
                  );
                })
              ],
            ),
         const   SizedBox(height: 30,),
         const    Spacer(
              flex: 1,
            ),
            const Text(
              "Instagram from Facebook",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          const   SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
