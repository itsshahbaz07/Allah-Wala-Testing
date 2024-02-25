import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(120.0); // Adjust the height as needed

  @override
  Widget build(BuildContext context) {
    return Container();
    // return Container(
    //   color: Colors.white, // Set your desired background color
    //   padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       // Left side of the app bar
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Row(
    //             children: [
    //               Icon(
    //                 Icons.location_on,
    //                 color: Colors.black,
    //               ),
    //               const SizedBox(width: 4),
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     'City Name',
    //                     style: TextStyle(
    //                       color: Colors.black,
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                   ),
    //                   Text(
    //                     'Location Name',
    //                     style: TextStyle(
    //                       color: Colors.black,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //       // Right side of the app bar
    //       Row(
    //         children: [
    //           IconButton(
    //             icon: Icon(Icons.shopping_cart, color: Colors.black),
    //             onPressed: () {
    //               // Handle cart icon tap
    //             },
    //           ),
    //           IconButton(
    //             icon: Icon(Icons.person, color: Colors.black),
    //             onPressed: () {
    //               // Handle person icon tap
    //             },
    //           ),
    //         ],
    //       ),
    //       // Search bar
    //       Expanded(
    //         child: Padding(
    //           padding: const EdgeInsets.only(left: 8.0),
    //           child: TextField(
    //             decoration: InputDecoration(
    //               hintText: 'Search...',
    //               border: OutlineInputBorder(),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
