import 'package:api_call/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    Key? key,
    this.buttonText,
  }) : super(key: key);
  final String? buttonText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.buttonColor,
            padding: const EdgeInsets.all(19.0)),
        onPressed: () {},
        child: Text(
          buttonText ?? 'login or register',
          style:
              GoogleFonts.manrope(fontWeight: FontWeight.w600, fontSize: 16.0),
        ),
      ),
    );
  }
}
