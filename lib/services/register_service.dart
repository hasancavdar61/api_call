import 'package:api_call/model/register_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterService {
  final dio = Dio();

  Future<RegisterModel?> registerCall({
    required String email,
    required String password,
    required String name,
  }) async {
    var response = await dio.post(
      'https://assign-api.piton.com.tr/api/rest/register',
      queryParameters: {"email": email, "password": password, "name": name},
    );

    if (response.statusCode == 200) {
      var result = RegisterModel.fromJson(response.data);

      debugPrint("Gelen Response => ${result.actionRegister.createdAt}");
      return result;
    } else if (response.statusCode == 400){
       Get.snackbar(
                  'Hata Oluştu',
                  'Lütfen formu doğru şekilde doldurunuz',
                  backgroundColor: Colors.teal,
                  colorText: Colors.white,
                );
      throw ("Bir sorun oluştu ${response.statusCode}");
    }
    return null;
  }
}
