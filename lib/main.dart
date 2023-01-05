import 'package:flutter/material.dart';
import 'package:grorcery_app_/routes/routes.dart';
import 'package:grorcery_app_/views/UI/themes/themes_.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GreenVege',
      theme: darkThemed,
      initialRoute: RouteManager.loginPage,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
