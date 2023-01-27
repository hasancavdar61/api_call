import 'package:api_call/model/cover_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CoverService {
  final dio = Dio();

  Future<CoverModel?> cover({
    required String fileName,
  }) async {
    var response = await dio.post(
      'https://assign-api.piton.com.tr/api/rest/cover_image',
      queryParameters: {"fileName": fileName},
    );

    if (response.statusCode == 200) {
      var result = CoverModel.fromJson(response.data);

      debugPrint("Gelen Response => $result");
      return result;
    } else {
      throw ("Bir sorun oluştu ${response.statusCode}");
    }
  }
}
