import 'package:api_call/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RFormField extends StatelessWidget {
  const RFormField({
    Key? key,
    this.hintText,
    this.obscureText,
    this.topText,
  }) : super(key: key);

  final String? hintText;
  final bool? obscureText;
  final String? topText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            topText ?? 'topText',
            style: GoogleFonts.manrope(
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                color: AppColors.loginTextColor),
          ),
        ),
        TextFormField(
          obscureText: obscureText ?? false,
          cursorColor: AppColors.backgroudColor,
          decoration: InputDecoration(
            hintText: hintText ?? 'mail or password',
            hintStyle: GoogleFonts.manrope(
                fontWeight: FontWeight.w400,
                color: AppColors.loginTextColor.withOpacity(0.4)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.formFieldBGColor)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.formFieldBGColor)),
            disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.formFieldBGColor)),
            filled: true,
            fillColor: AppColors.formFieldBGColor,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.formFieldBGColor),
            ),
          ),
        ),
      ],
    );
  }
}
