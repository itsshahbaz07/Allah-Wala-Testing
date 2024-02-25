import 'package:flutter/material.dart';

class ScrollContainer extends StatefulWidget {
  const ScrollContainer({super.key});

  @override
  State<ScrollContainer> createState() => _ScrollContainerState();
}

class _ScrollContainerState extends State<ScrollContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 1000, // Example content height, adjust as needed
              color: Colors.red,
              child: Center(
                child: Text(
                  'Scroll Me!',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
