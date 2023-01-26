import 'package:api_call/model/category_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CategoryService {
  final dio = Dio();
  

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
