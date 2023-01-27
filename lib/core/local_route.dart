import 'package:api_call/view/category_detail_screen/category_detail_screen.dart';
import 'package:api_call/view/login_screen/login_screen.dart';
import 'package:api_call/view/main_screen/main_screen.dart';
import 'package:api_call/view/register_screen/register_screen.dart';
import 'package:api_call/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

///[GetX] named route [GetRouteService] with [gettingRoutes] method.
//! Project route management here.
class GetRouteService {
  get routesGet => [
        gettingRoutes('/Main', const MainScreen()),
        gettingRoutes('/Register', const RegisterScreen()),
        gettingRoutes('/Login', const LoginScreen()),
        gettingRoutes('/CategoryDetail', const CategoryDetailScreen()),
        gettingRoutes('/Splash', const SplashScreen()),
      ];
}

/// GetPage metodunu daha işlevsel ve kısa yazmak için [gettingRoutes] metodu.

GetPage<dynamic> gettingRoutes(String name, Widget pageGetter) => GetPage(
      name: name,
      page: () => pageGetter,
      //? transition: transition,
    );
