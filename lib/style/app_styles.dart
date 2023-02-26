// ignore_for_file: unused_import, use_full_hex_values_for_flutter_colors, prefer_const_constructors
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class AppStyle {
  static Color bgColor = Color(0xFFe2e2ff);
  static Color mainColor = Color(0xFF000633);
  static Color accentColor = const Color(0xFF00e65FF);

  static List<Color> cardsColor = [
    Colors.white,
    Colors.red.shade100,
    Colors.pink.shade100,
    Colors.orange.shade100,
  ];

  static TextStyle mainTitle = GoogleFonts.roboto(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white);
  static TextStyle mainContent = GoogleFonts.roboto(
      fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.white);
}
