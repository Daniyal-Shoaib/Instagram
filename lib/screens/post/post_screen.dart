import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  var arrContent = [
    {
      "img": "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {
      "img": "https://pixlr.com/images/generator/how-to-generate.webp"
    },
    {
      "img": "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {
      "img": "https://pixlr.com/images/generator/how-to-generate.webp"
    },
    {
      "img": "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {
      "img": "https://pixlr.com/images/generator/how-to-generate.webp"
    },
    {
      "img": "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {
      "img": "https://pixlr.com/images/generator/how-to-generate.webp"
    },
    {
      "img": "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"
    },
    {
      "img": "https://pixlr.com/images/generator/how-to-generate.webp"
    }
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          toolbarHeight: 88,
          leading: IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.back,)),
          title: const Text(
            "All Posts",
            style: TextStyle(
                fontSize: 16,
                color: Color(0XFFF9F9F9),
                fontWeight: FontWeight.bold),
          ),

          centerTitle: true,
        ),
        body:  Column(
          children:[
            Expanded(
              child: GridView.builder(
                 itemCount: arrContent.length,
                  scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              
                  itemBuilder: (context,index){

                    return Container(
                      clipBehavior: Clip.antiAlias,
                      height: 124,
                      width: 124,
                      decoration: const BoxDecoration(),
                      child: Image.network(arrContent[index]['img']!,fit: BoxFit.cover,),
                    );
                  },
              ),
            )
          ]
        )
    );
  }
}
