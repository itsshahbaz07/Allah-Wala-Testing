import 'package:flutter/material.dart';

class ActiveOrdersPage extends StatefulWidget {
  const ActiveOrdersPage({super.key});

  @override
  State<ActiveOrdersPage> createState() => _ActiveOrdersPageState();
}

class _ActiveOrdersPageState extends State<ActiveOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("You don't have any active orders",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300
          ),
        ),
      ),
    );
  }
}
