import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  // static ThemeData get themeData{
  //   return ThemeData();
  // }
  //   static ThemeData get themeDataGetter =>
  //    ThemeData();
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
        primaryColorLight: const Color.fromARGB(213, 196, 183, 221),
        drawerTheme: DrawerThemeData(),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.amber),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 1, 26, 68),
          foregroundColor: Colors.amber,
          actionsIconTheme: IconThemeData(color: Colors.amberAccent),
        ),
        cardColor: darkBluishColor,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        primaryColor: creamColor,
        fontFamily: GoogleFonts.lato().fontFamily);
  }

  static ThemeData DarkTheme(BuildContext context) {
    return ThemeData(
        cardColor: creamColor,
        brightness: Brightness.dark,
        drawerTheme: DrawerThemeData(),
        primaryColorLight: const Color.fromARGB(255, 180, 185, 86),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: const Color.fromARGB(255, 255, 7, 7)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 120, 162, 234),
          foregroundColor: Colors.amber,
          actionsIconTheme: IconThemeData(color: Colors.amberAccent),
        ),
        textTheme: TextTheme(),
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        primaryColor: const Color.fromARGB(255, 1, 26, 68),
        fontFamily: GoogleFonts.lato().fontFamily);
  }

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
}
