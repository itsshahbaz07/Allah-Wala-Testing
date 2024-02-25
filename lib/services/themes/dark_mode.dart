import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    background: const Color(0xff222222),
    onBackground: const Color(0xffffffff),
    primary: const Color(0xffe32a1e), // Main App Color
      onPrimary: Colors.white,
    secondary: const Color(0xff616161), // Using for cards etc
    tertiary: Colors.white, // Using for Text in light Theme for white screens
    onTertiary: Colors.grey.shade800, // Using for Text in light Theme for black screens
    inversePrimary: Colors.grey.shade300,
    surface: const Color(0xffe32a1e),
    inverseSurface: Colors.white,
  ),
  // fontFamily: 'Jost'
);