import 'package:flutter/material.dart';
class PostScreenProfile extends StatefulWidget {
  const PostScreenProfile({super.key});

  @override
  State<PostScreenProfile> createState() => _PostScreenProfileState();
}

class _PostScreenProfileState extends State<PostScreenProfile> {
  var arrContent = [
    {
      "img":
      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg"
    },
    {
      "img":
      "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg"
    },
    {
      "img":
      "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_640.jpg"
    },
    {
      "img":
      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg"
    },
    {
      "img":
      "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg"
    },
    {
      "img":
      "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_640.jpg"
    },
    {
      "img":
      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg"
    },
    {
      "img":
      "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg"
    },
    {
      "img":
      "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_640.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: arrContent.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context,index){
            return Container(
              clipBehavior: Clip.antiAlias,
              height: 124,
              width: 124,
              decoration: const BoxDecoration(),
              child: Image.network(arrContent[index]["img"].toString(),fit: BoxFit.cover,),
            );
          }
      )
    );
  }
}
