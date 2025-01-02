// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpeningPage extends StatelessWidget {
  const OpeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.only(left: 30, right: 30, top: 90),
            child: Image.asset("lib/assets/openingPage.png", height: 100,),
          )),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Text("Welcome to the App", style: GoogleFonts.poppins(
                    fontSize: 28,
                    color: const Color(0xFF2F2E41),
                    fontWeight: FontWeight.w700,
                  )),
                  SizedBox(height: 15),
                  Text("Your one stop solution for monitoring battery health and water levels with ease", style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: Colors.grey[700],
                  ), textAlign: TextAlign.center,),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4B4B87),
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: Text("Get Started", style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    )),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}