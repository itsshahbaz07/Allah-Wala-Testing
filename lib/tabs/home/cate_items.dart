import 'package:allah_wala_biryani_app/checkout/checkout_view.dart';
import 'package:flutter/material.dart';

class CateItemsPage extends StatefulWidget {
  const CateItemsPage({super.key});

  @override
  State<CateItemsPage> createState() => _CateItemsPageState();
}

class _CateItemsPageState extends State<CateItemsPage> {
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
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                horizontal: 2.0
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
                      offset: Offset( 1, 2), // Moves shadow 2 pixels to the left
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Favourite Icon
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                        vertical: 2.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                              Icons.favorite_outline,
                              size: 24,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0
                      ),
                      child: Container(
                        width: 140,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/birynai_rbg.png'), // Image ka path yahan provide karen
                            fit: BoxFit.cover, // Fit property se image ko container ke andar adjust karein
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 4.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Extra Large Biryani',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0
                            ),
                            child: Text(
                              'Extra Large Chicken Biryani/Beef\nBiryani/Beef Pulao',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                          top: 16.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0
                            ),
                            child: Text(
                              '\Rs.999',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0
                            ),
                            child: SizedBox(
                              height: 30,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                },
                                child: Text(
                                    'Add to Cart',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  backgroundColor: Colors.red,
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
            );
          },
        ),
      ),
    );
  }
}
