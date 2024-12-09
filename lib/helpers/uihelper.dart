//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class UiHelper {
  //Code For splash Scree
  static customImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl");
  }

  //Code For Custom Text_Field
  static customTextField({
    required TextEditingController controller,
    required String text,
    required bool toHide,
  }) {
    return Container(
      width: 343,
      height: 44,
      decoration: BoxDecoration(
        color: const Color(0xff121212),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.grey.shade700,
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
