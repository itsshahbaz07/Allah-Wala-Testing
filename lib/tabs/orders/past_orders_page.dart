import 'package:flutter/material.dart';

class PastOrdersPage extends StatefulWidget {
  const PastOrdersPage({super.key});

  @override
  State<PastOrdersPage> createState() => _PastOrdersPageState();
}

class _PastOrdersPageState extends State<PastOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("You don't have any past orders",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300
          ),
        ),
      ),
    );
  }
}
