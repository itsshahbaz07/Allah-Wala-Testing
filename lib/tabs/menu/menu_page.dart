import 'package:allah_wala_biryani_app/common/widgets/menu_box.dart';
import 'package:allah_wala_biryani_app/common/widgets/searchbar.dart';
import 'package:allah_wala_biryani_app/tabs/menu/menu_items.dart';
import 'package:allah_wala_biryani_app/tabs/others/add_to_cart/addto_cart_page.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 12.0,
            // left: 12.0,
            // right: 12.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Menu",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => const AddToCartPage()),
                        );
                      },
                      child: Container(
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
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2.0,
                    vertical: 10.0,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: CustomSearchBar(
                        hintText: "Search"
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 15.0,
                      ),
                      child: MenuBox(
                        title: "Biryani",
                        subtitle: "10 items",
                        imagePath: 'assets/images/biryani.jpg',
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => const MenuItems()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 15.0,
                      ),
                      child: MenuBox(
                        title: "Curries",
                        subtitle: "120 items",
                        imagePath: 'assets/images/karhai.png',
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => const MenuItems()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 15.0,
                      ),
                      child: MenuBox(
                        title: "FastFood",
                        subtitle: "120 items",
                        imagePath: 'assets/images/broast.jpg',
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => const MenuItems()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 15.0,
                      ),
                      child: MenuBox(
                        title: "Desserts",
                        subtitle: "50 items",
                        imagePath: 'assets/images/kheer.jpg',
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => const MenuItems()),
                          );
                        },
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
