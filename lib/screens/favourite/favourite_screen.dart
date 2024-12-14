import 'package:flutter/material.dart';
import 'package:instagram/screens/favourite/following.dart';
import 'package:instagram/screens/favourite/you.dart';
class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
       appBar: AppBar(
         automaticallyImplyLeading: false,
         bottom: const TabBar(
             unselectedLabelColor: Colors.grey,
             labelColor: Colors.white,
             indicatorColor: Colors.white,
             indicatorSize: TabBarIndicatorSize.tab,
             tabs: [
               Tab(
                 text: "Following",
               ),
               Tab(
                 text: "You",
               )
             ]
         ),
       ),
        body:TabBarView(
          children: [
            FollowingScreen(),
            YouScreen(),
          ],
        )
      ),
    );
  }
}
