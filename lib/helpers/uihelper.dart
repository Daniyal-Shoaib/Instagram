import 'package:flutter/material.dart';

class UiHelper {
  //Code For splash Scree
  static customImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl");
  }
  //code For IconsImager
  static iconImage({required String iconUrl}) {
    return Image.asset("assets/icons/$iconUrl");
  }
  //codeForDrawer
  static iconDrawer({required String iconUrl}) {
    return Image.asset("assets/drawer_icons/$iconUrl");
  }
  //Code For Custom Text_Field
  static customTextField({
    required TextEditingController controller,
    required String text,
    required bool toHide,
    double width = 343,
    double height = 44,
    Color backgroundColor = const Color(0xff121212),
    Color borderColor = const Color(0xff616161),



  }) {
    return Container(
      width: width,
      height:height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: toHide,

          decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(fontSize: 14, color: Colors.white),
            border: InputBorder.none,

          ),
        ),
      ),
    );
  }

  //Code For CustomButton
  static customTextButton({
    required String text,
    required VoidCallback callback,
  }) {
    return TextButton(
      onPressed: callback,
      child: Text(
        text,


        style: const TextStyle(fontSize: 12, color: Color(0XFF3797EF)),
      ),
    );
  }

// Code For CustomElevatedButton

  static customButton(
      {
        required VoidCallback callback,
        required String buttonName,
        double width = 343,
        double height = 45,

      }) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(

              backgroundColor: const Color(0XFF3797EF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: Center(
              child: Text(
            buttonName,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ))),
    );
  }
}
