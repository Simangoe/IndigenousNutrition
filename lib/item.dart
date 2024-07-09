import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget item(width, height, filtercolor, text, image, GestureDetector) {
  return SizedBox(
      width: width,
      height: 175,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
          child: Stack(children: [
            Image.asset(image, width: width, fit: BoxFit.fitWidth),
            Container(width: width, height: height, color: filtercolor),
            Container(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          height: 1.5,
                          fontSize: 23,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 1),
                    ))),
            GestureDetector
          ])));
}
