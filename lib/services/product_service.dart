import 'package:api_call/model/product_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ProductService {
  final dio = Dio();

  Future<ProductModel?> getProduct({required int id}) async {
    var response = await dio.get(
      'https://assign-api.piton.com.tr/api/rest/products/$id',
    );
    if (response.statusCode == 200) {
      var result = ProductModel.fromJson(response.data);
      debugPrint("Gelen Response => ${response.data}");
      return result;
    } else {
      throw ("Bir sorun oluştu ${response.statusCode}");
    }
  }
}
