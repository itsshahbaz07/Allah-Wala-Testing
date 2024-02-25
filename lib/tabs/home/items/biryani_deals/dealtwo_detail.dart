import 'package:allah_wala_biryani_app/tabs/others/add_to_cart/addto_cart_page.dart';
import 'package:flutter/material.dart';

class DealTwoDetails extends StatefulWidget {
  const DealTwoDetails({super.key});

  @override
  State<DealTwoDetails> createState() => _DealTwoDetailsState();
}

class _DealTwoDetailsState extends State<DealTwoDetails> {
  double price = 15;
  int qty = 1;
  bool isFav = false;
  int _selectedCount = 0;
  int _groupValue = 0;

  void _handleRadioValueChange(int? value) {
    if (value != null) {
      // Update the selected group value
      setState(() {
        _groupValue = value;
      });
      // Update the selected count
      setState(() {
        _selectedCount = _groupValue ?? 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/biryani.jpg",
            width: media.width,
            height: media.width,
            fit: BoxFit.cover,
          ),
          Container(
            width: media.width,
            height: media.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      SizedBox(height: media.width - 60,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 35),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "Deal 2",
                                style: TextStyle(
                                    color: Color(0xff4A4B4D),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            SizedBox(height: 8),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        " 4.2 Star Ratings",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Rs.650",
                                        style: TextStyle(
                                            color: Color(0xff4A4B4D),
                                            fontSize: 31,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "/per Deal",
                                        style: TextStyle(
                                            color: Color(0xff4A4B4D),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "Description",
                                style: TextStyle(
                                    color: Color(0xff4A4B4D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "Chicken Biryani/Raita/1 Buddy Pack 345 ML",
                                style: TextStyle(
                                    color: Color(0xff7C7D7E),
                                    fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25),
                              child: Divider(
                                color:
                                Color(0xff7C7D7E).withOpacity(0.4),
                                height: 1,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "Customize your Order",
                                style: TextStyle(
                                    color: Color(0xff4A4B4D),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Choose Your Desire drink',
                                      style: TextStyle(
                                          color: Color(0xff4A4B4D),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    RadioListTile(
                                      title: Text(
                                        'Pepsi',
                                        style: TextStyle(
                                            color: Color(0xff4A4B4D),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                      value: 1,
                                      groupValue: _groupValue,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                    RadioListTile(
                                      title: Text('Sting',
                                        style: TextStyle(
                                            color: Color(0xff4A4B4D),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                      value: 2,
                                      groupValue: _groupValue,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                    RadioListTile(
                                      title: Text('Dew',
                                        style: TextStyle(
                                            color: Color(0xff4A4B4D),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700
                                        ),),
                                      value: 3,
                                      groupValue: _groupValue,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                    RadioListTile(
                                      title: Text('7up',
                                        style: TextStyle(
                                            color: Color(0xff4A4B4D),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700
                                        ),),
                                      value: 4,
                                      groupValue: _groupValue,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "Special Instructions",
                                style: TextStyle(
                                    color: Color(0xff4A4B4D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "Please let us know if you are allgeric to anything or if we need to avoid anything",
                                style: TextStyle(
                                    color: Color(0xff7C7D7E),
                                    fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Ex. No Onions',
                                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Adjust padding as needed
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey), // Color of the border
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)), // Adjust border radius as needed
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey), // Color of the border when enabled
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red), // Color of the border when focused
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                children: [
                                  Text(
                                    "Number of Boxes",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const Spacer(),
                                  InkWell(
                                    onTap: () {
                                      qty = qty - 1;

                                      if (qty < 1) {
                                        qty = 1;
                                      }
                                      setState(() {});
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      height: 25,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                          BorderRadius.circular(12.5)),
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    height: 25,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.red,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(12.5)),
                                    child: Text(
                                      qty.toString(),
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      qty = qty + 1;

                                      setState(() {});
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      height: 25,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                          BorderRadius.circular(12.5)),
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 25,
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context, MaterialPageRoute(
                                      builder: (context) => const AddToCartPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15), // Padding
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20), // Border radius
                                  ),
                                ),
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(fontSize: 16, color: Colors.white), // Text style
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(
            top: 20,
            left: 5,
            right: 20,
          ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
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
        ],
      ),
    );
  }
}
