import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helpers/uihelper.dart';
class MessengerScreen extends StatefulWidget {
   const MessengerScreen({super.key});

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  var arrCount = [
    {
      "img":"https://cdn.pixabay.com/photo/2017/03/27/12/59/adult-2178560_1280.jpg",
      "name":"barrenness",
      "last_msg":"I heard this is a good movie,"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2021/09/20/03/24/skeleton-6639547_1280.png",
      "name":"joshua_l",
      "last_msg":"Have a nice day, bro!"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2023/01/28/20/23/ai-generated-7751688_1280.jpg",
      "name":"martini_rond",
      "last_msg":"See you on the next meeting!"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2021/02/01/16/54/woman-5971326_1280.jpg",
      "name":"wanderer_",
      "last_msg":"Sounds good 😂😂😂"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_1280.jpg",
      "name":"Piero_d",
      "last_msg":"The new design looks cool, b…"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2016/09/28/08/28/art-1699977_1280.jpg",
      "name":"maxjacobson",
      "last_msg":"Thank you, bro!"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2024/10/20/08/29/portrait-9134409_1280.png",
      "name":"jamie.franco",
      "last_msg":"Yes, I'm going to travel in To"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2021/06/25/13/22/girl-6363743_1280.jpg",
      "name":"m_humphrey",
      "last_msg":"Instagram UI is pretty good"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2017/03/27/12/59/adult-2178560_1280.jpg",
      "name":"joshua_l",
      "last_msg":"Have a nice day, bro!"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2021/09/20/03/24/skeleton-6639547_1280.png",
      "name":"joshua_l",
      "last_msg":"Have a nice day, bro!"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2023/01/28/20/23/ai-generated-7751688_1280.jpg",
      "name":"martini_rond",
      "last_msg":"See you on the next meeting!"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2021/02/01/16/54/woman-5971326_1280.jpg",
      "name":"wanderer_",
      "last_msg":"Sounds good 😂😂😂"
    },
  ];
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(

        toolbarHeight: 88,
        leading: IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.back)),
        title: const Text(
          "Sujal_dave",
          style: TextStyle(
              fontSize: 16,
              color: Color(0XFFF9F9F9),
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.chevron_down,
                  color: Colors.white,
                  size: 15,
                )),
          ),
          const SizedBox(width: 62,),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 28,
              )),

        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          Row(

            children: [
              Row(
                children: [

                  const SizedBox(width: 20,),
                  Container(
                    height: 40,
                    width: 360,
                    decoration: BoxDecoration(
                        color: const Color(0XFF262626),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: TextField(
                        controller: searchController,
                        decoration: const InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(fontWeight: FontWeight.normal,color: Color(0XFF8E8E93)),
                            prefixIcon: Icon(CupertinoIcons.search,size: 20,),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: arrCount.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(arrCount[index]["img"].toString()),
                      ),
                      title: Text(arrCount[index]["name"].toString(),style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                      subtitle: Text(arrCount[index]["last_msg"].toString(),style: TextStyle(fontSize: 13,color: Colors.grey),),
                      trailing: UiHelper.customImage(imgUrl: "Camera Icon.png"),
                    );
                  }
              )
          )

        ],
      ),
      floatingActionButton: SizedBox(height: 60,width: 400,
        child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0XFF121212),
            shape: const RoundedRectangleBorder(),
            fixedSize: const Size(double.infinity, 60)
        ), child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Icon(CupertinoIcons.camera,color: Color(0XFF3897F0),),
            SizedBox(width: 10,),
            Text("Camera",style: TextStyle(fontSize: 13,color: Color(0XFF3897F0)),)
          ],)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );

  }
}
