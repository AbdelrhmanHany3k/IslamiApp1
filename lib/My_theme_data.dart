import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primarycolor = Color(0xFFB7935F);
Color darkprimarycolor = Color(0xFF141A2E);

class MyThemeData {
  static ThemeData lighttheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF242424),
      unselectedItemColor: Color(0xFFF8F8F8),
      backgroundColor: primarycolor,
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: primarycolor),
    primaryColor: primarycolor,
    scaffoldBackgroundColor: Colors.transparent,
    dividerColor: primarycolor,
    iconTheme: IconThemeData(color: Colors.black, size: 30),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
    ),
    cardTheme: CardTheme(
      color: Color(0xFFEFE7DC),
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
    ),
  );

  static ThemeData darktheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFFFACC1D),
      unselectedItemColor: Color(0xFFF8F8F8),
      backgroundColor: darkprimarycolor,
    ),
    primaryColor: darkprimarycolor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkprimarycolor),
    dividerColor: Colors.yellow,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
    ),
    iconTheme: IconThemeData(color: Colors.white, size: 30),
    cardTheme: CardTheme(
      color: Colors.indigo,
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.w700, color: Colors.yellow),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w700, color: Colors.yellow),
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
    ),
  );
}
