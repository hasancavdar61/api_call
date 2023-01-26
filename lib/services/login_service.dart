import 'package:api_call/model/login_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginService {
  final dio = Dio();

  Future<LoginModel?> loginCall({
    required String email,
    required String password,
  }) async {
    var response = await dio.post(
      'https://assign-api.piton.com.tr/api/rest/login',
      queryParameters: {
        "email": email,
        "password": password,
      },
    );

    if (response.statusCode == 200) {
      var result = LoginModel.fromJson(response.data);

      debugPrint("Gelen Response => $result");
      return result;
    } else {
      throw ("Bir sorun oluştu ${response.statusCode}");
    }
  }
}
