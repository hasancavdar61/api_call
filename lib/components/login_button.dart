import 'package:api_call/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//! Global şekilde kullanmak üzere tasarlanmış Button widgeti.

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    Key? key,
    this.buttonText, this.action,
  }) : super(key: key);
  final String? buttonText;
  final VoidCallback? action;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.buttonColor,
            padding: const EdgeInsets.all(19.0)),
        onPressed: action,
        child: Text(
          buttonText ?? 'login or register',
          style:
              GoogleFonts.manrope(fontWeight: FontWeight.w600, fontSize: 16.0),
        ),
      ),
    );
  }
}
