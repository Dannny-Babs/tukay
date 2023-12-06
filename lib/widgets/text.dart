import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const MyText({
    super.key,
    required this.text,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: GoogleFonts.darkerGrotesque().fontFamily,
        decoration: TextDecoration.none,
        color: color,
      ),
    );
  }
}
