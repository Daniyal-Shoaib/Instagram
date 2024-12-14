import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/helpers/uihelper.dart';

import '../messenger/messenger_screen.dart';
import 'model_screen.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
   final List<ModelScreen> modelScreen = [
     ModelScreen(imgPath: 'assets/images/OvalProfile.png', text: 'Your Story'),
     ModelScreen(imgPath: 'assets/images/profile_two.png', text: 'barrenness'),
     ModelScreen(imgPath: 'assets/images/profile_three.png', text: 'johnnycake'),
     ModelScreen(imgPath: 'assets/images/profile_four.png', text: 'kieron_d'),
     ModelScreen(imgPath: 'assets/images/profile_five.png', text: 'craig_love'),
     ModelScreen(imgPath: 'assets/images/profile_four.png', text: 'zack_john'),
   ];
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          toolbarHeight: 88,
          backgroundColor: Colors.black12,
          leading: UiHelper.customImage(imgUrl: "Camera Icon.png"),
          title: UiHelper.customImage(imgUrl: "Instagram Logo.png"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: UiHelper.customImage(imgUrl: "IGTV.png")),
            IconButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>  MessengerScreen()));
                },
                icon: UiHelper.customImage(imgUrl: "Messanger.png"))
          ],
        ),
       body:Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           const SizedBox(height: 10,),

           Expanded(
             child: ListView.builder(
                 itemCount: modelScreen.length,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context,index){

                   var item = modelScreen[index];
                   return Padding(
                     padding: const EdgeInsets.only(left: 15),

                     child: Column(
                       children: [

                         CircleAvatar(
                             radius: 30,
                             backgroundImage: AssetImage(item.imgPath)
                         ),
                         const SizedBox(height: 5,),
                         Padding(
                           padding: const EdgeInsets.only(left: 2),
                           child: Text(item.text,style: const TextStyle(fontSize: 12),),
                         ),
                       ],
                     ),
                   );
                 }
             ),
           ),
           ListTile(
             leading: UiHelper.iconImage(iconUrl: "ovalPerson.png"),
             title:  Row(
               children: [
                 const Text(
                   "joshua_I",
                   style: TextStyle(fontSize: 13, color: Color(0XFFF9F9F9)),
                 ),
                 const SizedBox(width: 5,),
                 UiHelper.iconImage(iconUrl: 'tab_circle.png')
               ],
             ),
             subtitle: const Text(
               "Tokyo, Japan",
               style: TextStyle(fontSize: 11, color: Color(0XFFF9F9F9)),
             ),
             trailing: const Icon(Icons.more_horiz,color: Colors.white,),
           ),
           Container(
               clipBehavior: Clip.antiAlias,
               height: 375,
               width: double.infinity,
               decoration: const BoxDecoration(

               ),
               child:  Image.asset("assets/images/home_page_big.png",fit: BoxFit.cover,)
           ),
           const SizedBox(height: 20,),
            Row(children: [
             const SizedBox(width: 20,),
             UiHelper.iconImage(iconUrl: "Like.png"),
             const SizedBox(width: 25,),
             UiHelper.iconImage(iconUrl: "Comment.png"),
             const SizedBox(width: 25,),
             UiHelper.iconImage(iconUrl: "Messanger.png"),
             const SizedBox(width: 205,),
             UiHelper.iconImage(iconUrl: "Save.png")
           ],),
           const SizedBox(height: 10,),
           Row(children: [
             const SizedBox(width: 20,),
             UiHelper.customImage(imgUrl: "Ovalone.png"),
             const SizedBox(width: 5,),
             const Text("Liked by craig_love and 44,686 others",style: TextStyle(fontSize: 13,color: Color(0XFFF9F9F9)),)
           ],),
           const Row(children: [
             SizedBox(width: 20,),
           ],),
           const SizedBox(height: 8,),
           const Row(children: [
            SizedBox(width: 25,),
             Text("joshua_l",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color(0XFFF9F9F9)),),
             SizedBox(width: 10,),
             Text("Sujata_dave The game in Japan was amazing  ",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color(0XFFF9F9F9)),),
           ],),
           const Padding(
               padding:EdgeInsets.only(left: 25),
               child:Text("I want to share some photos",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color(0XFFF9F9F9)),),

           ),

           const SizedBox(height: 35,),




         ],
       )
    );
  }
}
