// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:bhms/components/CustomTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  TextEditingController phoneNumberController = new TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              child: Container(
            padding: EdgeInsets.only(top: 100, left: 35, right: 35),
            child: Column(
              children: [
                Text(
                  "Verify Your Number",
                  style: CustomTextStyles().heading(),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 25),
                TextField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                    hintText: "Enter Your Mobile Number",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 16,
                      letterSpacing: 0,
                    ),
                    contentPadding: EdgeInsets.only(left: 20, bottom: 20),
                  ),
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    letterSpacing: 4,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 36, vertical: 14),
                  decoration: BoxDecoration(
                      color: const Color(0xFF4B4B87),
                      borderRadius: BorderRadius.circular(14)),
                  child: Text("Get OTP",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )),
          SizedBox(height: 100),
          Container(
              child: Container(
            padding: EdgeInsets.only(left: 40, right: 20, top: 20, bottom: 20),
            child: Image.asset("lib/assets/login.png"),
          ))
        ],
      ),
    );
  }
}
