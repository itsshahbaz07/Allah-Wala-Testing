import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: const Color(0xffffffff),
    onBackground: const Color(0xff222222),
    primary: const Color(0xffe32a1e),// Main App Color
      onPrimary: Colors.white, // Text color for primary color
    secondary: const Color(0xfff5f3f4), // Using for cards etc
    tertiary: Colors.grey.shade800, // Using for Text in light Theme for white screens
    onTertiary: Colors.white, // Using for Text in light Theme for black screens
    inversePrimary: Colors.grey.shade900, // Using for Text in light Theme for white screens
    surface: const Color(0xffe32a1e), // Main App Theme Color
    inverseSurface: Colors.white,
  ),
  // fontFamily: 'Jost'
);