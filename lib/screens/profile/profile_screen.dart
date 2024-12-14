import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screens/profile/post_screen_profile.dart';
import 'package:instagram/screens/profile/profile_model.dart';
import 'package:instagram/screens/profile/tags_screen.dart';

import '../../helpers/uihelper.dart';
class ProfileScreen extends StatefulWidget {
   ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
 final List<ProfileModel> profileModel = [
   ProfileModel(
       text: 'New',
       img: 'assets/images/plus.png',
   ),
   ProfileModel(
       text: 'Friends',
       img: 'assets/images/Oval_(2).png',
   ),
   ProfileModel(
       text: 'Sport ',
       img: 'assets/images/Oval_(3).png',
   ),
   ProfileModel(
       text: 'Design',
       img: 'assets/images/Oval_(4).png',
   ),
 ];
 final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            toolbarHeight: 60,
            automaticallyImplyLeading: false,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Icon(CupertinoIcons.lock,color: Colors.white,size: 13,),
               SizedBox(
                  width: 5,
                ),
                Text(
                  "jacob_w",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                  icon: const Icon(CupertinoIcons.line_horizontal_3,color: Colors.white,size: 25,),
              )],
          ),
          endDrawer: Drawer(
            backgroundColor: Colors.black,
            width: MediaQuery.of(context).size.width * 0.70,
            child: ListView(

              padding: EdgeInsets.zero,

              children: [
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text(
                    'jacob_w',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                ListTile(
                  leading: UiHelper.iconDrawer(iconUrl: 'Archive.png'),
                  title: const Text('Archive'),
                  onTap: () {
                    // Handle navigation to Home
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: UiHelper.iconDrawer(iconUrl: 'Your Activity.png'),
                  title: const Text('Your Activity'),
                  onTap: () {
                    // Handle navigation to Home
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: UiHelper.iconDrawer(iconUrl: 'Nametag.png'),
                  title: const Text('Name Tag'),
                  onTap: () {
                    // Handle navigation to Home
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: UiHelper.iconDrawer(iconUrl: 'Saved.png'),
                  title: const Text('Saved'),
                  onTap: () {
                    // Handle navigation to Home
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: UiHelper.iconDrawer(iconUrl: 'Close Friends.png'),
                  title: const Text('Close Friends'),
                  onTap: () {
                    // Handle navigation to Home
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: UiHelper.iconDrawer(iconUrl: 'Discover People.png'),
                  title: const Text('Discover People'),
                  onTap: () {
                    // Handle navigation to Home
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: UiHelper.iconDrawer(iconUrl: 'Open Facebook.png'),
                  title: const Text('Open Facebook'),
                  onTap: () {
                    // Handle navigation to Home
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 300,),
                ListTile(
                  leading: UiHelper.iconDrawer(iconUrl: 'Settings.png'),
                  title: const Text('Settings'),
                  onTap: () {
                    // Handle navigation to Home
                    Navigator.pop(context);
                  },
                ),

              ],
            ),
          ),
          body:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  SizedBox(width: 20,),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/icons/tab_profile.png',),
                    radius: 35,
      
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("54",style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),),
                          Text("Post",style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),),
                        ],
                      ),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          Text("834",style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),),
                          Text("Following",style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),),
                        ],
                      ),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          Text("162",style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),),
                          Text("Follower",style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              const Row(
                children: [
                  SizedBox(width: 25,),
                  Text(
                    "Jacob West",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(width: 25,),
                  Text(
                    "Digital goodies designer @PixelSense",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(width: 25,),
                  Text(
                    "Everything is designed.",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: SizedBox(
                  height: 40,
                  width: 360,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                    child: const Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

               SizedBox(
                 height: 100,
                 child: ListView.builder(

                     scrollDirection: Axis.horizontal,
                     itemCount: profileModel.length,
                     itemBuilder: (context,index){
                       var item = profileModel[index];
                       return Column(
                         children: [
                           Row(
                             children: [
                               const SizedBox(width: 30,),
                               Container(
                                 width:56,
                                 height:56,
                                decoration: BoxDecoration(
                                  image:DecorationImage(
                                      image: AssetImage(item.img),
                                      fit:BoxFit.cover
                                  )
                                ),
                               ),
                               const SizedBox(width: 10,),

                             ],
                           ),
                           const SizedBox(height: 5,),
                           Row(
                             children: [
                               const SizedBox(width: 20,),

                               Text(item.text)

                             ],
                           ),
                         ],
                       );
                     }
                 ),
               ),



              SizedBox(
                height: 50,
                child: AppBar(
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        icon: UiHelper.customImage(imgUrl: "Grid Icon.png"),
                      ),
                      Tab(
                        icon: UiHelper.customImage(imgUrl: "Tags Icon.png"),
                      )
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: TabBarView(
                    children: [
                      PostScreenProfile(),
                      TagsScreen(),
                                          ]
                ),
              ),


            //  const SizedBox(height: 250,),
            ],
          )
      ),
    );
  }
}
