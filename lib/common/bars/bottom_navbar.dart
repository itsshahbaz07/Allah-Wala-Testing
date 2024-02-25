import 'package:allah_wala_biryani_app/tabs/favourites/favourites_page.dart';
import 'package:allah_wala_biryani_app/tabs/home/home_page.dart';
import 'package:allah_wala_biryani_app/tabs/menu/menu_page.dart';
import 'package:allah_wala_biryani_app/tabs/orders/orders_page.dart';
import 'package:allah_wala_biryani_app/tabs/settings/settings_page.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
    const BottomNavbar({super.key});

    @override
    State<BottomNavbar> createState() => _BottomNavbarState();
  }

  class _BottomNavbarState extends State<BottomNavbar> {

    int _selectedIndex = 2;

    final List<Widget> _pages = [
      const MenuPage(),
      const OrdersPage(),
      const HomePage(),
      const FavouritesPage(),
      const SettingsPage(),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Menu"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "Orders"),
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: "Favourites"),
            BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Settings"),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).colorScheme.primary,
          selectedItemColor: Theme.of(context).colorScheme.inverseSurface,
          unselectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Theme.of(context).colorScheme.inverseSurface),
          unselectedIconTheme: const IconThemeData(color: Colors.black),
        ),
      );
    }
  }
