import 'package:api_call/constants/colors.dart';
import 'package:api_call/services/register_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterRiverpod extends ChangeNotifier {
  final service = RegisterService();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  String cover = '';
  List list = [];

/// Kullanıcı kaydı fonksiyonu.
/// Fonksiyon [.then] ile dönen [value] null değilse...
/// [Get] paketiyle bir [snackbar] oluşturur ve kullanıcıya gösterilir.
/// Hata olması halinde hata kullanıcıya gösterilir.
  void register() async {
    await service
        .registerCall(
            email: email.text, password: password.text, name: name.text)
        .then((value) {
      if (value != null) {
        Get.snackbar(
          value.actionRegister.name.toUpperCase(),
          'Welcome our company',
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
