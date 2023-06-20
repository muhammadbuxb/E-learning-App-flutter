import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:google_fonts/google_fonts.dart';
class AppThemes{
  ThemeData lightTheme = ThemeData(
    fontFamily: GoogleFonts.fanwoodText().fontFamily,
    primarySwatch: Colors.amber,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.amber,
      foregroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black54),

    )
  );

  ThemeData darkTheme = ThemeData(

    primarySwatch: Colors.cyan,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.amber,
      iconTheme: const IconThemeData(color: Colors.white),
      
    )
  );
}
