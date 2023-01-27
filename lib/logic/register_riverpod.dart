import 'package:api_call/constants/colors.dart';
import 'package:api_call/services/cover_service.dart';
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

  void coverC() async {
    await CoverService().cover(fileName: 'dune.png').then((value) {
      if (value != null) {
        value.actionProductImage.toJson().forEach((key, value) {
          list = [value];
          debugPrint(list.toString());
          notifyListeners();
        });
      } else {}
    });
  }
}
