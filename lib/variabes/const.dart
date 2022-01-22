import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Style {

  static Color primary = Color(0xff121212);


  static h6(Color color) {
    return GoogleFonts.inter(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: color);
  }


}