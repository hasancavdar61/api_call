import 'package:api_call/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryTextWidget extends StatelessWidget {
  const CategoryTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Best Seller',
            style: GoogleFonts.manrope(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: AppColors.backgroudColor),
          ),
          TextButton(
            onPressed: (() {}),
            child: Text(
              'View All',
              style: GoogleFonts.manrope(
                  fontWeight: FontWeight.w700, color: AppColors.buttonColor),
            ),
          ),
        ],
      ),
    );
  }
}
