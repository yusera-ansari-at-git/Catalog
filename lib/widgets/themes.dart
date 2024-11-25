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
        drawerTheme: DrawerThemeData(),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.amber),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 1, 26, 68),
          foregroundColor: Colors.amber,
          actionsIconTheme: IconThemeData(color: Colors.amberAccent),
        ),
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        primaryColor: const Color.fromARGB(255, 1, 26, 68),
        fontFamily: GoogleFonts.lato().fontFamily);
  }
}
