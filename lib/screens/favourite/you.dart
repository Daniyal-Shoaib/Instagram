import 'package:flutter/material.dart';


import '../../helpers/uihelper.dart';

class YouScreen extends StatelessWidget {
  const YouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
             SizedBox(
               width: 375,
               height: 48,
               child: const Padding(
                   padding: EdgeInsets.only(top: 15, left: 20),
                   child: Text("Follow Requests",style: TextStyle(
                       fontSize: 15, color: Color(0XFFF9F9F9),
                   ),),
               ),
             ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 106,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "New",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,top: 5),
                      child: ListTile(
                        leading: UiHelper.customImage(imgUrl: "followingImg.png"),
                        title: Text(
                          "karennne liked your photo. 1h",
                          style: TextStyle(fontSize: 13),
                        ),
                        trailing: UiHelper.customImage(imgUrl: "youRect.png"),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 106,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Today",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,top: 5),
                      child: ListTile(
                        leading: UiHelper.customImage(imgUrl: "circle.png"),
                        title: Text(
                          "kiero_d, zackjohn and 26 others liked your photo. 3h",
                          style: TextStyle(fontSize: 13),
                        ),

                        trailing: UiHelper.customImage(imgUrl: "youRect.png"),
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 106,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "This Week",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,top: 5),
                      child: ListTile(
                        leading: UiHelper.customImage(imgUrl: "this_week.png"),
                        title: Text(
                          "craig_love mentioned you in a comment: @jacob_w exactly..",
                          style: TextStyle(fontSize: 13),
                        ),

                        trailing: UiHelper.customImage(imgUrl: "evening.png"),
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ListTile(
                    leading: UiHelper.customImage(imgUrl: "rond.png"),
                    title: Text(
                      "martini_rond started following you. 3d",
                      style: TextStyle(fontSize: 13),
                    ),
                    trailing: Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white54,
                          ),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                        child: GestureDetector(
                           onTap: (){},
                            child: Text("Message")),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ListTile(
                    leading: UiHelper.customImage(imgUrl: "mart.png"),
                    title: Text(
                      "maxjacobson started following you. 3d",
                      style: TextStyle(fontSize: 13),
                    ),
                    trailing: Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white54,
                          ),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                        child: GestureDetector(
                            onTap: (){},
                            child: Text("Message")),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ListTile(
                    leading: UiHelper.customImage(imgUrl: "mis_potter.png"),
                    title: Text(
                      "mis_potter started following you. 3d",
                      style: TextStyle(fontSize: 13),
                    ),
                    trailing: Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.blue,

                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                        child: GestureDetector(
                            onTap: (){},
                            child: Text("Following",style: TextStyle(color: Colors.white),)),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 106,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "This Month",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,top: 5),
                      child: ListTile(
                        leading: UiHelper.customImage(imgUrl: "followingImg.png"),
                        title: Text(
                          "karennne liked your photo. 1h",
                          style: TextStyle(fontSize: 13),
                        ),
                        trailing: UiHelper.customImage(imgUrl: "youRect.png"),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ListTile(
                    leading: UiHelper.customImage(imgUrl: "rond.png"),
                    title: Text(
                      "martini_rond started following you. 3d",
                      style: TextStyle(fontSize: 13),
                    ),
                    trailing: Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white54,
                          ),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                        child: GestureDetector(
                            onTap: (){},
                            child: Text("Message")),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ListTile(
                    leading: UiHelper.customImage(imgUrl: "mart.png"),
                    title: Text(
                      "maxjacobson started following you. 3d",
                      style: TextStyle(fontSize: 13),
                    ),
                    trailing: Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white54,
                          ),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                        child: GestureDetector(
                            onTap: (){},
                            child: Text("Message")),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}