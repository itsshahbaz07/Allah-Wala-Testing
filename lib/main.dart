import 'package:allah_wala_biryani_app/auth/login_or_signup.dart';
import 'package:allah_wala_biryani_app/common/bars/bottom_navbar.dart';
import 'package:allah_wala_biryani_app/services/themes/light_mode.dart';
import 'package:allah_wala_biryani_app/services/themes/theme_provider.dart';
import 'package:allah_wala_biryani_app/tabs/home/home_page.dart';
import 'package:allah_wala_biryani_app/tabs/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: BottomNavbar(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
