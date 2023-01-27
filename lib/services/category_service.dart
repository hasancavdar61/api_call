import 'package:api_call/model/category_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CategoryService {
  final dio = Dio();

  /// Endpointe istek [Dio] paketiyle atılır.
  /// [GET] metodu kullanılmıştır.
  /// Eğer [response]'un [satusCode]'u 200'e eşitse değer [result] değişkenine
  /// atanır.
  Future<CategoryModel?> getCategory() async {
    var response = await dio.get(
      'https://assign-api.piton.com.tr/api/rest/categories',
    );
    if (response.statusCode == 200) {
      var result = CategoryModel.fromJson(response.data);
      debugPrint("Gelen Response => ${response.data}");
      return result;
    } else {
      throw ("Bir sorun oluştu ${response.statusCode}");
    }
  }
}
