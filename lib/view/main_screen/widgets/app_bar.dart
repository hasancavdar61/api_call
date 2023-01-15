import 'package:api_call/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CAppBar extends StatelessWidget {
  const CAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: AppColors.loginTextColor.withOpacity(0.1)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width / 5,
                padding: const EdgeInsets.only(
                    top: 20.0, left: 20.0, bottom: 20.0),
                child: Image.network(
                  'https://res.cloudinary.com/dfnv0z3av/image/upload/v1673637923/Logo_Stroke_v2hmtp.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                ),
                child: Text(
                  "Catalog",
                  style: GoogleFonts.manrope(
                      color: AppColors.textBlackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      );
  }
}