import 'package:flutter/material.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Favourites',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 700,
                child: Center(
                  child: Text("You don't have any favourites",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
