import 'package:api_call/logic/category_riverpod.dart';
import 'package:api_call/logic/login_riverpod.dart';
import 'package:api_call/logic/product_riverpod.dart';
import 'package:api_call/logic/register_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryRiverpod = ChangeNotifierProvider((ref) => CategoryRiverpod());
final productRiverpod = ChangeNotifierProvider((ref) => ProductRiverpod());
final registerRiverpod = ChangeNotifierProvider((ref) => RegisterRiverpod());
final loginRiverpod = ChangeNotifierProvider((ref) => LoginRiverpod());
