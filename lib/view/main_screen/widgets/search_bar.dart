import 'package:api_call/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0, bottom: 0.0),
      child: TextFormField(
        obscureText: false,
        cursorColor: AppColors.backgroudColor,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          suffixIcon: Image.network(
              'https://res.cloudinary.com/dfnv0z3av/image/upload/v1673795813/Icon_zdrlus.png'),
          hintText: 'Search',
          hintStyle: GoogleFonts.manrope(
              fontSize: 20.0,
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
    );
  }
}
