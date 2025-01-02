import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyles {
  TextStyle heading() {
    return GoogleFonts.poppins(
      fontSize: 26,
      color: const Color(0xFF2F2E41),
      fontWeight: FontWeight.w700
    );
  }
}