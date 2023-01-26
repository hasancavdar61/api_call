import 'package:api_call/services/product_service.dart';
import 'package:flutter/material.dart';

class ProductRiverpod extends ChangeNotifier {
  final service = ProductService();
  int? id = 1;
  List productList = [];
  getProduct() async {
    await service.getProduct(id: id!).then((value) {
      if (value!.product.isNotEmpty) {
        productList = value.product;
        notifyListeners();
      }
    });
  }
}
