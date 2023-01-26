import 'package:api_call/core/first_board.dart';
import 'package:api_call/core/local_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        getPages: GetRouteService().routesGet,
        debugShowCheckedModeBanner: false,
        home: FirstBoard());
  }
}
