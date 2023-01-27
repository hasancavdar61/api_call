import 'package:api_call/components/form_field.dart';
import 'package:api_call/components/login_button.dart';
import 'package:api_call/constants/colors.dart';
import 'package:api_call/logic/riverpod_management.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final String imageLink =
      'https://res.cloudinary.com/dfnv0z3av/image/upload/v1673637923/Logo_Stroke_v2hmtp.png';

  final rememberProvider = StateProvider((_) => false);
  final checkboxProvider = Provider((ref) => false);
  late var isChecked = Get.put(false);
  final flag = false.obs;

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
                ref.read(loginRiverpod).login();
              } else {
                Get.snackbar(
                  'Hata Oluştu',
                  'Lütfen formu doğru şekilde doldurunuz',
                  backgroundColor: Colors.teal,
                  colorText: Colors.white,
                );
              }
            },
            buttonText: 'Login',
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
                  key: _formKey,
                  child: Column(
                    children: [
                      RFormField(
                        controller: ref.watch(loginRiverpod).email,
                        topText: 'E-mail',
                        hintText: 'john@mail.com',
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      RFormField(
                        controller: ref.watch(loginRiverpod).password,
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
                        Obx(() => Checkbox(
                              fillColor: MaterialStateProperty.all(
                                  AppColors.logoColor),
                              focusColor: AppColors.logoColor,
                              checkColor: Colors.white,
                              value: flag.value,
                              onChanged: ((_) {
                                flag.toggle();
                                if (flag.value == true) {
                                  GetStorage().write('remember', true);
                                  debugPrint('saved');
                                } else {
                                  GetStorage().remove('remember');
                                  debugPrint('removed');
                                }
                              }),
                            )),
                        Text(
                          'Remember Me',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w700,
                              color: AppColors.logoColor),
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () => Get.toNamed('/Register'),
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
