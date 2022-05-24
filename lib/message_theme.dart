import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageTheme {
  static TextTheme lightTextTheme = TextTheme(
      bodyText1: GoogleFonts.dancingScript(
          fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w700),
      bodyText2: GoogleFonts.dancingScript(
          fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w400),
      headline1: GoogleFonts.dancingScript(
          fontSize: 32.0, color: Colors.black, fontWeight: FontWeight.bold),
      headline2: GoogleFonts.dancingScript(
          fontSize: 21.0, color: Colors.black, fontWeight: FontWeight.w700),
      headline3: GoogleFonts.dancingScript(
          fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w600),
      headline6: GoogleFonts.dancingScript(
          fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.w600));

  static TextTheme darkTextTheme = TextTheme(
      bodyText1: GoogleFonts.dancingScript(
          fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.w700),
      bodyText2: GoogleFonts.dancingScript(
          fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.w400),
      headline1: GoogleFonts.dancingScript(
          fontSize: 32.0, color: Colors.white, fontWeight: FontWeight.bold),
      headline2: GoogleFonts.dancingScript(
          fontSize: 21.0, color: Colors.white, fontWeight: FontWeight.w700),
      headline3: GoogleFonts.dancingScript(
          fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w600),
      headline6: GoogleFonts.dancingScript(
          fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w600));

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          return Colors.black;
        }),
      ),
      textTheme: lightTextTheme,
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black, // 아이콘, 텍스트 등의 색상
        backgroundColor: Colors.white, // 백그라운드 색상
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          return Colors.black;
        }),
      ),
      textTheme: darkTextTheme,
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.white, // 아이콘, 텍스트 등의 색상
        backgroundColor: Color(0xFF212121), // 백그라운드 색상
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.yellowAccent,
      ),
    );
  }
}