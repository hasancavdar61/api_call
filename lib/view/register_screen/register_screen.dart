import 'package:api_call/components/form_field.dart';
import 'package:api_call/components/login_button.dart';
import 'package:api_call/constants/colors.dart';
import 'package:api_call/logic/riverpod_management.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final String imageLink =
      'https://res.cloudinary.com/dfnv0z3av/image/upload/v1673637923/Logo_Stroke_v2hmtp.png';
  bool value = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: LoginButtonWidget(
            action: () {
              if (_formKey.currentState!.validate()) {
                ref.read(registerRiverpod).register();
              } else {
                Get.snackbar(
                  'Hata Oluştu',
                  'Lütfen formu doğru şekilde doldurunuz',
                  backgroundColor: Colors.teal,
                  colorText: Colors.white,
                );
              }
            },
            buttonText: 'Register',
          ),
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
                  'Welcome',
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: AppColors.loginTextColor.withOpacity(0.6)),
                ),
                Text(
                  'Register an account',
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
                  key: _formKey,
                  child: Column(
                    children: [
                      RFormField(
                        controller: ref.read(registerRiverpod).name,
                        topText: 'Name',
                        hintText: 'John Doe',
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      RFormField(
                        controller: ref.read(registerRiverpod).email,
                        topText: 'E-mail',
                        hintText: 'john@mail.com',
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      RFormField(
                        controller: ref.read(registerRiverpod).password,
                        topText: 'Password',
                        hintText: '......',
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w700,
                          color: AppColors.logoColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
