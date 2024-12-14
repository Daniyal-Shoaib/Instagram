import 'package:flutter/material.dart';
import '../../helpers/uihelper.dart';
import '../SignUp/signup_screen.dart';
import '../bottom_nav/bottomnavigator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 2,
            ),
            UiHelper.customImage(imgUrl: "InstaLogoText.png"),
            const SizedBox(
              height: 20,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: UiHelper.customTextButton(
                      text: 'Forgot password?',
                      callback: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context)=>ForgetScreen(),
                        //     )
                        // );
                      }),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            UiHelper.customButton(
              callback: () {
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context)=> const BottomNavigator(),
                )
                );
              },
              buttonName: "Log in",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customImage(imgUrl: 'fb.png'),
                UiHelper.customTextButton(
                    text: 'Log in with Facebook', callback: () {})
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
           const  SizedBox(height: 30,),
          const   Spacer(
              flex: 1,
            ),
            const Text(
              "Instagram from Facebook",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
           const  SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
