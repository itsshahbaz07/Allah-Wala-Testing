import 'package:allah_wala_biryani_app/common/widgets/settings_next_box.dart';
import 'package:allah_wala_biryani_app/common/widgets/settings_onoff_box.dart';
import 'package:allah_wala_biryani_app/tabs/favourites/favourites_page.dart';
import 'package:allah_wala_biryani_app/tabs/others/profile/profile_page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SettingNextBox(
                  icon: Icons.person,
                  text: "Profile",
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                    );
                  },
                ),

                const SettingOnOffBox(
                  // icon: Icons.lightbulb_rounded,
                  lightIcon: Icons.lightbulb_outline_rounded,
                  darkIcon: Icons.lightbulb,
                  text: "Dark Mode",
                ),

                SettingNextBox(
                  icon: Icons.credit_card,
                  text: "Payment Details",
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => FavouritesPage()),
                    );
                  },
                ),

                SettingNextBox(
                  icon: Icons.history,
                  text: "History",
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => FavouritesPage()),
                    );
                  },
                ),

                SettingNextBox(
                  icon: Icons.info,
                  text: "About Us",
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => FavouritesPage()),
                    );
                  },
                ),

                SettingNextBox(
                  icon: Icons.contact_phone,
                  text: "Contact",
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => FavouritesPage()),
                    );
                  },
                ),

                SettingNextBox(
                  icon: Icons.logout,
                  text: "Logout",
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => FavouritesPage()),
                    );
                  },
                ),
                // Add more instances of CustomBoxWithSwitch as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
