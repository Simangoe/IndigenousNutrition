// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textbody(text) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
    child: Text(
      text,
      style: GoogleFonts.openSans(
          height: 1.5,
          fontSize: 17.5,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w300,
          color: const Color.fromARGB(255, 43, 52, 57),
          letterSpacing: 1),
    ),
  );
}

Widget textbodycolor(text, color) {
  return Container(
      child: Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.openSans(
          height: 1.5,
          fontSize: 17.5,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w300,
          color: color,
          letterSpacing: 1),
    ),
  ));
}

Widget textsubheading(text) {
  return Container(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
          child: Text(
            text,
            style: GoogleFonts.openSans(
                height: 1.5,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 43, 52, 57),
                letterSpacing: 1),
          )));
}

Widget textsubheadingcolor(text, color) {
  return Container(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
                height: 1.5,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                color: color,
                letterSpacing: 1),
          )));
}

Widget textheading(text) {
  return Container(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
                height: 1.5,
                fontSize: 30,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 43, 52, 57),
                letterSpacing: 1),
          )));
}

Widget textheadingcolor(text, color) {
  return Container(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
                height: 1.5,
                fontSize: 30,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 43, 52, 57),
                letterSpacing: 1),
          )));
}
