// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bhms/components/CustomTextStyles.dart';
import 'package:bhms/components/HomePageCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              padding: EdgeInsets.only(top: 80, left: 40),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFF4B4B87),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome,",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Gowthami",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // Your Devices

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(33, 0, 0, 0),
                          blurRadius: 5)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 34.0, top: 20, bottom: 6),
                      child: Text(
                        "Your Devices",
                        style: CustomTextStyles().sideHeading(),
                      ),
                    ),
                    Container(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 14),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text(
                                    "Device ${index}",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                    SizedBox(height: 20)
                  ],
                ),
              ),
            ),

            // Select the Cells

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(33, 0, 0, 0),
                            blurRadius: 5)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 34.0, top: 20, bottom: 6),
                        child: Text(
                          "Select the Cell",
                          style: CustomTextStyles().sideHeading(),
                        ),
                      ),
                      Container(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 7, horizontal: 14),
                                    decoration: BoxDecoration(
                                        color: Colors.blue[200],
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: Text(
                                      "Cell ${index}",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  )),
            ),

            // Temperature

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
              child: Container(
                padding: EdgeInsets.only(left: 40),
                width: MediaQuery.of(context).size.width,
                height: 170,
                decoration: BoxDecoration(
                    color: const Color(0xFFFF6968),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(33, 0, 0, 0),
                          blurRadius: 5)
                    ]),
                child: Stack(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Positioned(
                      top: 40,
                      child: Text(
                        "Temperature",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "34",
                            style: GoogleFonts.poppins(
                              fontSize: 50,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5),
                          Column(
                            children: [
                              SizedBox(height: 30),
                              Text(
                                "°C",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(20)),
                            color: const Color.fromARGB(90, 255, 255, 255),
                          ),
                        )),
                    Positioned(
                      bottom: 20,
                      right: 30,
                      child: Text(
                        "Normal",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 22,
                      child: Image.asset("lib/assets/Temperature.png", height: 30),
                    )
                  ],
                ),
              ),
            ),

            // Current and Voltage

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomePageCard(title: "Current", value: "25", image: "Current", state: "Normal", units: "A", color: const Color(0xFFFF8F61),),
                  HomePageCard(title: "Voltage", value: "125", image: "Voltage", state: "Normal", units: "v", color: const Color(0xFF2CC2FF)),
                ],
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomePageCard(title: "SHO", value: "70", image: "SOH", state: "Normal", units: "%", color: Color(0xFF977AFF)),
                  HomePageCard(title: "SOC", value: "80", image: "SOC", state: "Normal", units: "%", color: Color(0xFFFF6968)),
                ],
              ),
            ),

            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
