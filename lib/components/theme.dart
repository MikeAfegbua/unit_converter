import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 21.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 10.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 25.0,
      fontWeight: FontWeight.w200,
      color: Colors.white,
    ),
  );

  static ThemeData theme(bool isDarkTheme) {
    return ThemeData(
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      scaffoldBackgroundColor:
          isDarkTheme ? Colors.black : Colors.lightBlue[50],
      listTileTheme: ListTileThemeData(
        textColor: isDarkTheme ? Colors.white : Colors.black,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: isDarkTheme ? Colors.grey[800] : Colors.lightBlue[50],
        iconTheme: IconThemeData(
          color: isDarkTheme ? Colors.white : Colors.black,
        ),
        titleTextStyle: TextStyle(
          fontSize: 22,
          color: isDarkTheme ? Colors.white : Colors.black,
        ),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: isDarkTheme ? Colors.grey[800] : Colors.lightBlue[50],
      ),
      iconTheme: IconThemeData(
          color: isDarkTheme ? Colors.lightBlue[50] : Colors.grey[800]),
      textTheme: isDarkTheme ? darkTextTheme : lightTextTheme,
    );
  }
}
