import 'package:api_call/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogChips extends StatelessWidget {
  const CatalogChips({
    Key? key,
    this.chipText,
    this.color,
  }) : super(key: key);

  final String? chipText;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0),
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: color ?? AppColors.backgroudColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      child: Text(
        chipText ?? 'chips',
        style: GoogleFonts.manrope(
            fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
      ),
    );
  }
}
