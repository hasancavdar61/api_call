import 'package:api_call/model/product_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ProductService {
  final dio = Dio();
  
/// Endpointe istek [Dio] paketiyle atılır.
/// [GET] metodu kullanılmıştır.
/// Eğer [response]'un [satusCode]'u 200'e eşitse değer [result] değişkenine
/// atanır.

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
