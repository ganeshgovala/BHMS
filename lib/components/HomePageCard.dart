import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageCard extends StatelessWidget {
  final String title;
  final String value;
  final String image;
  final String state;
  final String units;
  final Color color;
  const HomePageCard(
      {required this.title,
      required this.value,
      required this.image,
      required this.state,
      required this.units,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: EdgeInsets.only(left: 20),
      width: MediaQuery.of(context).size.width / 2.2,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(color: Color.fromARGB(33, 0, 0, 0), blurRadius: 5)
          ]),
      child: Stack(
        children: [
          Positioned(
            top: 14,
            right: 15,
            child : Image.asset("lib/assets/$image.png", height: 26),
          ),
          Positioned(
            top: 40,
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 65,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: GoogleFonts.poppins(
                    fontSize: 44,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 5),
                Column(
                  children: [
                    SizedBox(height: 25),
                    Text(
                      units,
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
                height: 58,
                width: 58,
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
            right: 20,
            child: Text(state, style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),)
          )
        ],
      ),
    );
  }
}
