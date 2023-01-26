import 'package:api_call/constants/colors.dart';
import 'package:api_call/services/login_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginRiverpod extends ChangeNotifier {
  final service = LoginService();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void login() async {
    await service
        .loginCall(
      email: email.text,
      password: password.text,
    )
        .then((value) {
      if (value != null) {
        GetStorage().write('token', value.actionLogin.token);
        Get.snackbar(
          email.text,
          'Welcome back!',
          backgroundColor: AppColors.backgroudColor,
          colorText: Colors.white,
        );
        Get.offAllNamed('/Main');
      } else {
        Get.snackbar(
          'Hata Oluştu',
          '',
          backgroundColor: Colors.teal,
          colorText: Colors.white,
        );
      }
    });
  }
}
