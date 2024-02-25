import 'package:allah_wala_biryani_app/common/widgets/searchbar.dart';
import 'package:allah_wala_biryani_app/tabs/home/cate_items.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Slider Images
  final List<String> sliderImages = [
    'assets/images/slider_0.jpeg',
    'assets/images/slider_1.jpeg',
    'assets/images/slider_2.jpeg',
    'assets/images/slider_3.jpeg',
  ];

  PageController _pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                left: 12.0,
                right: 12.0,
              ),
              child: Row(
                children: [
                  // Left Icon & Text
                  Icon(
                    Icons.edit_location,
                    size: 34,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Choose Location",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        "KHUDAD COLONY KARACHI",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Right Icons
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      Icons.shopping_bag,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      Icons.person,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // SearchBar
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 4.0,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomSearchBar(
                    hintText: "Search"
                ),
              ),
            ),

            // Scrollable Content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  decoration: const BoxDecoration(
                    //  color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child:  Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 150.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                        items: sliderImages.map((url) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    url,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 2),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.amberAccent
                              ),
                              child: Transform.scale(
                                scale: 1.3,
                                child: CupertinoSlidingSegmentedControl(
                                  children: {
                                    0: Text("Special Deals",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                    1: Text("Combo",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black
                                      ),
                                    ),
                                    2: Text("Extra Large Biryani",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                    3: Text("Exclutive Discount Deals",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black
                                      ),
                                    ),
                                    4: Text("Biryani",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black
                                      ),
                                    ),
                                  },
                                  groupValue: _selectedIndex,
                                  onValueChanged: (value) {
                                    setState(() {
                                      _selectedIndex = value!;
                                      _pageController.animateToPage(value!,
                                          duration: const Duration(milliseconds: 300),
                                          curve: Curves.ease);
                                    });
                                  },
                                  backgroundColor: Colors.grey.shade200,
                                  thumbColor: Colors.red,
                                  padding: const EdgeInsets.all(0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: PageView(
                          controller: _pageController,
                          onPageChanged: (index) {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          children: const [
                            CateItemsPage(),
                            CateItemsPage(),
                            CateItemsPage(),
                            CateItemsPage(),
                            CateItemsPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
