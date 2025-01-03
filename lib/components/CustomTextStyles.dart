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

  TextStyle subHeading() {
    return GoogleFonts.poppins(
      fontSize: 14,
      color: const Color.fromARGB(255, 89, 89, 89),
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle sideHeading() {
    return GoogleFonts.poppins(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );
  }
}