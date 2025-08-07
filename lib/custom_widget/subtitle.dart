import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:society_setu/Color/app_colors.dart';

class Subtitle extends StatelessWidget {
  final String text;
  const Subtitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
     text,style: GoogleFonts.josefinSans(
          color: Appcolor.subtitlecolor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
    );
  }
}