import 'package:api_call/services/category_service.dart';
import 'package:flutter/material.dart';

class CategoryRiverpod extends ChangeNotifier {
  final service = CategoryService();
  List categoryList = [];
  getCategory() async {
    await service.getCategory().then((value) {
      if (value!.category.isNotEmpty) {
        categoryList = value.category;
      }
    });
  }
}
