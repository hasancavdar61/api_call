import 'package:api_call/view/main_screen/main_screen.dart';
import 'package:api_call/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class FirstBoard extends StatelessWidget {
  FirstBoard({Key? key}) : super(key: key);

  final storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    if (storage.read('remember') == true && storage.read('token') != null) {
      return const MainScreen();
    } else {
      return const SplashScreen();
    }
  }
}
