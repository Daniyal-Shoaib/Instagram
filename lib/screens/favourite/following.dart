import 'package:flutter/material.dart';


import '../../helpers/uihelper.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({super.key});

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  var arrContent = [
    {
      "img": "profile_two.png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "profile_three.png",
      "txt": "kiero_d, zackjohn and craig_love liked joshua_l photo. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "profile_four.png",
      "txt": "kiero_d started following craig_love. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "rond.png",
      "txt": "craig_love liked 8 posts. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "mis_potter.png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "Oval_(3).png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "mart.png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "circle.png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "profile_three.png",
      "txt": "kiero_d, zackjohn and craig_love liked joshua_l photo. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "profile_three.png",
      "txt": "kiero_d, zackjohn and craig_love liked joshua_l photo. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "profile_four.png",
      "txt": "kiero_d started following craig_love. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "rond.png",
      "txt": "craig_love liked 8 posts. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "mis_potter.png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "Oval_(3).png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "mart.png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "circle.png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "followingGreen.png"
    },
    {
      "img": "profile_three.png",
      "txt": "kiero_d, zackjohn and craig_love liked joshua_l photo. 3h",
      "lastimg": "followingGreen.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListTile(
                    leading: UiHelper.customImage(
                        imgUrl: arrContent[index]["img"].toString()),
                    title: Text(arrContent[index]["txt"].toString()),
                    trailing: UiHelper.customImage(
                        imgUrl: arrContent[index]["lastimg"].toString(),),
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ));
  }
}