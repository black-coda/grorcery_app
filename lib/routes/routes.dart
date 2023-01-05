import 'package:flutter/material.dart';
import 'package:grorcery_app_/views/UI/auth/login_ui.dart';
import 'package:grorcery_app_/views/UI/auth/register_ui.dart';
import 'package:grorcery_app_/views/UI/pages/home_page.dart';
import 'package:grorcery_app_/views/UI/pages/item_details.dart';
import 'package:grorcery_app_/views/UI/pages/items.dart';

class RouteManager {
  static const loginPage = '/';
  static const listPage = '/list';
  static const detailPage = '/detail';
  static const cartPage = '/cart';
  static const homePage = '/login';
  static const signUpPage = '/register';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const HomeWidget(),
        );

      case listPage:
        return MaterialPageRoute(
          builder: (context) => const ItemGridList(),
        );

      case detailPage:
        return MaterialPageRoute(
          builder: (context) => const ItemDetails(),
        );

      case cartPage:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );

      case loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      case signUpPage:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );

      default:
        throw const FormatException();
    }
  }
}
