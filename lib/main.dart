import 'package:api_call/core/local_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: GetStorage().read('remember') != null &&
              GetStorage().read('token') != null
          ? '/Main'
          : '/Splash',
      getPages: GetRouteService().routesGet,
      debugShowCheckedModeBanner: false,
    );
  }
}
