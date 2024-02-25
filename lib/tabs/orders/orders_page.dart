import 'package:allah_wala_biryani_app/tabs/orders/active_orders_page.dart';
import 'package:allah_wala_biryani_app/tabs/orders/past_orders_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  PageController _pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 80,
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 1.5,
                child: CupertinoSlidingSegmentedControl(
                  children: const {
                    0: Text("Active Orders",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                      ),
                    ),
                    1: Text("Past Orders",
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
                  backgroundColor: Colors.grey.shade200, // Button ka background color
                  thumbColor: Colors.red,
                  padding: const EdgeInsets.all(0),
                ),
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
                  ActiveOrdersPage(),
                  PastOrdersPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
