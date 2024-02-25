import 'package:allah_wala_biryani_app/tabs/home/items/biryani_deals/dealfour_detail.dart';
import 'package:allah_wala_biryani_app/tabs/home/items/biryani_deals/dealone_detail.dart';
import 'package:allah_wala_biryani_app/tabs/home/items/biryani_deals/dealthree_detail.dart';
import 'package:allah_wala_biryani_app/tabs/home/items/biryani_deals/dealtwo_detail.dart';
import 'package:allah_wala_biryani_app/tabs/home/items/special_deals/special_deal_details.dart';
import 'package:allah_wala_biryani_app/tabs/others/add_to_cart/addto_cart_page.dart';
import 'package:flutter/material.dart';

class BiryaniDealsPage extends StatefulWidget {
  const BiryaniDealsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BiryaniDealsPage> createState() => _BiryaniDealsPageState();
}

class _BiryaniDealsPageState extends State<BiryaniDealsPage> {
  late List<Map<String, dynamic>> items;

  @override
  void initState() {
    super.initState();
    items = [
      {
        'title': 'Deal 1',
        'description': '1 Chicken Biryani Single/2 Chicken Rolls/1Raita/2 Cold drinks',
        'imageURL': 'assets/images/birynai_rbg.png',
        'price': 850,
        'isFavorite': false,
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DealOneDetails(),
            ),
          );
        }
      },
      {
        'title': 'Deal 2',
        'description': 'Chicken Biryani/Raita/1 Buddy Pack 345 ML',
        'imageURL': 'assets/images/birynai_rbg.png',
        'price': 650,
        'isFavorite': false,
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DealTwoDetails(),
            ),
          );
        }
      },
      {
        'title': 'Deal 3',
        'description': 'Beef Biryani/Raita/1 Buddy Pack 345 ML',
        'imageURL': 'assets/images/birynai_rbg.png',
        'price': 999,
        'isFavorite': false,
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DealThreeDetails(),
            ),
          );
        }
      },
      {
        'title': 'Deal 4',
        'description': 'Beef Biryani/Raita/1 Buddy Pack 345 ML',
        'imageURL': 'assets/images/birynai_rbg.png',
        'price': 750,
        'isFavorite': false,
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DealFourDetails(),
            ),
          );
        }
      },
      // Add more items as needed
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4.0,
          vertical: 8.0,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            mainAxisExtent: 320,
          ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            Map<String, dynamic> item = items[index];
            return GestureDetector(
              onTap: () {
                item['onTap']();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 2.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    // Card Shadow
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1), // Light shadow color
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(1, 2), // Moves shadow 2 pixels to the left
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Favourite Icon
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 2.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  // Toggle favorite status
                                  item['isFavorite'] = !item['isFavorite'];
                                });
                              },
                              child: Icon(
                                item['isFavorite']
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                size: 24,
                                color: item['isFavorite']
                                    ? Colors.red
                                    : Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                        ),
                        child: Container(
                          width: 140,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(item['imageURL']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.0,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                item['title'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Text(
                                item['description'],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16.0,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 2.0,
                              ),
                              child: Text(
                                '\Rs.${item['price']}',
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 2.0,
                              ),
                              child: SizedBox(
                                height: 30,
                                width: 140,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const AddToCartPage(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    backgroundColor: Colors.red,
                                  ),
                                  child: const Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
