import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? letterSpacing;
  final double? height;
  const TextWidget({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.letterSpacing,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 16.sp,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black,
        letterSpacing: letterSpacing,
        height: height,
      ),
    );
  }
}
