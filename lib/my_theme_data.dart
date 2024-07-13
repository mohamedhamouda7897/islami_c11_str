import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color primaryDarkColor = Color(0xFF141A2E);
  static const Color blackColor = Color(0xFF242424);
  static const Color yellowColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: GoogleFonts.elMessiri(
              color: blackColor, fontSize: 30, fontWeight: FontWeight.bold)),
      // dividerColor: primaryColor,
      // colorScheme: ColorScheme(
      //     brightness: Brightness.light,
      //     primary: primaryColor,
      //     onPrimary: primaryColor,
      //     secondary: blackColor,
      //     onSecondary: blackColor,
      //     error: primaryColor,
      //     onError: primaryColor,
      //     background: primaryColor,
      //     onBackground: primaryColor,
      //     surface: primaryColor,
      //     onSurface: primaryColor
      // ),
      dividerTheme: DividerThemeData(color: primaryColor, thickness: 3),
      textTheme: TextTheme(
        bodyLarge:
            GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.bold),
        bodyMedium:
            GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w500),
        bodySmall:
            GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.normal),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: primaryColor,
      ));

  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: GoogleFonts.elMessiri(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
      // dividerColor: primaryColor,
      // colorScheme: ColorScheme(
      //     brightness: Brightness.light,
      //     primary: primaryColor,
      //     onPrimary: primaryColor,
      //     secondary: blackColor,
      //     onSecondary: blackColor,
      //     error: primaryColor,
      //     onError: primaryColor,
      //     background: primaryColor,
      //     onBackground: primaryColor,
      //     surface: primaryColor,
      //     onSurface: primaryColor
      // ),
      dividerTheme: DividerThemeData(color: yellowColor, thickness: 3),
      textTheme: TextTheme(
        bodyLarge:
            GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.bold),
        bodyMedium:
            GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w500),
        bodySmall:
            GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.normal),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: primaryDarkColor,
      ));
}
