import 'package:allah_wala_biryani_app/tabs/home/items/biryani_deals/biryani_deals.dart';
import 'package:allah_wala_biryani_app/tabs/home/items/broast/broast_deals.dart';
import 'package:allah_wala_biryani_app/tabs/home/items/burgers/burgers.dart';
import 'package:allah_wala_biryani_app/tabs/home/items/kabab/kabab.dart';
import 'package:allah_wala_biryani_app/tabs/home/items/kheer/kheer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItems extends StatefulWidget {
  const MenuItems({super.key});

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {

  PageController _pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 2),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0
                    ),
                    child: Container(
                      height: 60,
                      // decoration: BoxDecoration(
                      //   color: Colors.amberAccent
                      // ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0
                        ),
                        child: CupertinoSlidingSegmentedControl(
                          children: const {
                            0: Text("Kabab",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            1: Text("Burgers",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                            2: Text("Biryani Deals",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            3: Text("Broast",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                            4: Text("Dessert",
                              style: TextStyle(
                                  fontSize: 15,
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
                          backgroundColor: Colors.white,
                          thumbColor: Colors.red,
                          padding: const EdgeInsets.all(0),
                        ),
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
                  KababPage(),
                  BurgersPage(),
                  BiryaniDealsPage(),
                  BroastDealsPage(),
                  KheerPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
