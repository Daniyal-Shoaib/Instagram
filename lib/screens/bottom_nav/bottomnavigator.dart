import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:instagram/screens/favourite/favourite_screen.dart';
import 'package:instagram/screens/home/home_screen.dart';
import 'package:instagram/screens/post/post_screen.dart';
import 'package:instagram/screens/profile/profile_screen.dart';
import 'package:instagram/screens/search/search_screen.dart';
class BottomNavigator extends StatefulWidget{
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int currentIndex = 0 ;
  List<Widget> pages = [
     HomeScreen(),
     const SearchScreen(),
    const PostScreen(),
    const FavouriteScreen(),
     ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type:BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          onTap: (index){
          currentIndex=index;
          setState(() {

          });
          },
          items:  const [
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.house_fill,size: 23,),label: "Home"),
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.search,size: 23),label: "Search"),
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.plus_app,size: 23),label: "Post"),
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart,size: 23),label: "Favourite"),
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled,size: 23),label: "Profile"),




          ]
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
    )
    ;
  }
}