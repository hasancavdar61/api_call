import 'package:api_call/components/form_field.dart';
import 'package:api_call/components/login_button.dart';
import 'package:api_call/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String imageLink =
      'https://res.cloudinary.com/dfnv0z3av/image/upload/v1673637923/Logo_Stroke_v2hmtp.png';
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: LoginButtonWidget(buttonText: 'Login',),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    width: Get.width / 4,
                    child: Image.network(imageLink),
                  ),
                ),
                const SizedBox(
                  height: 115.0,
                ),
                Text(
                  'Welcome back!',
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: AppColors.loginTextColor.withOpacity(0.6)),
                ),
                Text(
                  'Login to your account',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                      color: AppColors.loginTextColor),
                ),
                const SizedBox(
                  height: 80.0,
                ),
                Form(
                  child: Column(
                    children: const [
                      RFormField(
                        topText: 'E-mail',
                        hintText: 'john@mail.com',
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      RFormField(
                        topText: 'Password',
                        hintText: '......',
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          fillColor:
                              MaterialStateProperty.all(AppColors.logoColor),
                          focusColor: AppColors.logoColor,
                          checkColor: Colors.white,
                          value: value,
                          onChanged: ((newValue) {
                            setState(() {
                              value = newValue!;
                            });
                          }),
                        ),
                        Text(
                          'Remember Me',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w700,
                              color: AppColors.logoColor),
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w700,
                            color: AppColors.logoColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

