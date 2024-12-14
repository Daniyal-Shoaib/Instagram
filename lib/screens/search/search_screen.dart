import 'package:flutter/material.dart';

import '../../helpers/uihelper.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> categories = ["IGTV", "Shop", "Style", "Sports", "Auto"];
  // Data for each category
  final Map<String, List<String>> categoryImages = {
    "IGTV": [
      "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
      "https://pixlr.com/images/generator/how-to-generate.webp",
      "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
      "https://pixlr.com/images/generator/how-to-generate.webp",
      "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
      "https://pixlr.com/images/generator/how-to-generate.webp",
      "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
      "https://pixlr.com/images/generator/how-to-generate.webp",
      "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
      "https://pixlr.com/images/generator/how-to-generate.webp",
    ],
    "Shop": [
      "https://cdn.pixabay.com/photo/2019/12/14/08/36/shopping-4694470_1280.jpg",
      "https://cdn.pixabay.com/photo/2019/03/12/09/18/tomatoes-4050245_1280.jpg",
      "https://cdn.pixabay.com/photo/2020/10/06/11/55/woman-5632026_1280.jpg",
      "https://cdn.pixabay.com/photo/2023/08/25/07/37/shoes-8212405_1280.jpg",
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
      "https://pixlr.com/images/generator/how-to-generate.webp",
    ],
    "Style": [
      "https://cdn.pixabay.com/photo/2020/07/06/07/47/street-5375897_1280.jpg",
      "https://cdn.pixabay.com/photo/2021/09/20/23/02/car-6642023_1280.jpg",
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
      "https://cdn.pixabay.com/photo/2018/06/12/20/17/soccer-3471402_1280.jpg",
      "https://cdn.pixabay.com/photo/2017/08/07/23/50/climbing-2609319_1280.jpg",
    ],
    "Sports": [
      "https://cdn.pixabay.com/photo/2023/08/27/00/08/cycling-8215968_1280.jpg",
      "https://cdn.pixabay.com/photo/2023/04/17/10/31/tennis-7932066_1280.jpg",
      "https://cdn.pixabay.com/photo/2018/06/12/20/17/soccer-3471402_1280.jpg",
      "https://cdn.pixabay.com/photo/2017/08/07/23/50/climbing-2609319_1280.jpg",
      "https://cdn.pixabay.com/photo/2023/08/27/00/08/cycling-8215968_1280.jpg",
      "https://cdn.pixabay.com/photo/2023/04/17/10/31/tennis-7932066_1280.jpg",
      "https://cdn.pixabay.com/photo/2018/06/12/20/17/soccer-3471402_1280.jpg",
      "https://cdn.pixabay.com/photo/2017/08/07/23/50/climbing-2609319_1280.jpg",
    ],
    "Auto": [
      "https://cdn.pixabay.com/photo/2019/03/12/09/18/tomatoes-4050245_1280.jpg",
      "https://cdn.pixabay.com/photo/2020/10/06/11/55/woman-5632026_1280.jpg",
      "https://cdn.pixabay.com/photo/2016/11/29/10/01/vw-bulli-1868890_1280.jpg",
      "https://cdn.pixabay.com/photo/2018/08/03/14/00/vw-beetle-3581950_1280.jpg",
      "https://cdn.pixabay.com/photo/2020/02/03/10/02/sports-car-4815234_1280.jpg",
      "https://cdn.pixabay.com/photo/2020/07/06/07/47/street-5375897_1280.jpg",
      "https://cdn.pixabay.com/photo/2021/09/20/23/02/car-6642023_1280.jpg",
    ],
  };
  String selectedCategory = "IGTV";
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<String> imageToShow = categoryImages[selectedCategory]!;

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 36,
                width: 327,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0XFF262626)),
                child: TextField(
                  controller: searchController,
                  decoration: const InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff8E8E93),
                      ),
                      hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0XFF8E8E93),
                          fontWeight: FontWeight.normal),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: UiHelper.iconImage(iconUrl: 'tab_live.png'),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: categories.map(
                  (category) {
                    int index = categories.indexOf(category);
                    bool isSelected = selectedCategory == category;
                    double width = 60;
                    double height = 32;
                    if (index == 0) {
                      width = 75;
                      height = 32;
                    } else if (index == 1) {
                      width = 77;
                      height = 32;
                    } else if (index == 2) {
                      width = 56;
                      height = 32;
                    } else if (index == 3) {
                      width = 68;
                      height = 32;
                    } else if (index == 4) {
                      width = 53;
                      height = 32;
                    }

                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: GestureDetector(
                          onTap: () {

                            setState(() {
                              selectedCategory = category;
                            });
                          },
                          child: Container(
                            width: width,
                            height: height,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:
                                    isSelected ? Colors.white : Colors.white24,
                              ),
                              borderRadius: BorderRadius.circular(3),
                              color:
                                  isSelected ? Colors.grey[800] : Colors.black,
                            ),
                            child: Center(
                              child: index == 0 || index == 1
                                  ? Row(
                                      children: [
                                        const SizedBox(width: 10,),
                                        UiHelper.iconImage(
                                            iconUrl: index == 0
                                                ? 'tab_igtv.png'
                                                : 'tab_shop.png'),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          category,
                                          style: TextStyle(
                                            color: isSelected
                                                ? Colors.white
                                                : Colors.white70,
                                          ),
                                        ),
                                      ],
                                    )
                                  : Text(
                                      category,
                                      style: TextStyle(
                                        color: isSelected
                                            ? Colors.white
                                            : Colors.white70,
                                      ),
                                    ),
                            ),
                          ),
                        ));
                  },
                ).toList(),
              ),
            ],
          ),

          Expanded(
            child: GridView.builder(
               itemCount: imageToShow.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
            
                ),
                itemBuilder: (context,index){
                 return Container(
                   clipBehavior: Clip.antiAlias,
                   height: 124,
                   width: 124,
                   decoration: const BoxDecoration(),
                   child: Image.network(imageToShow[index],fit: BoxFit.cover,),
            
                 );
                }
            ),
          )
        ],
      ),
    );
  }
}
