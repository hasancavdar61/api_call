import 'package:api_call/components/login_button.dart';
import 'package:api_call/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroudColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 1,
            ),
            Image.network(
                'https://res.cloudinary.com/dfnv0z3av/image/upload/v1673637923/Logo_Stroke_v2hmtp.png'),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: LoginButtonWidget(
                    action: () => Get.toNamed('/Login'),
                    buttonText: 'Login',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.offAllNamed('/Main');
                   
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: AppColors.skipColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
