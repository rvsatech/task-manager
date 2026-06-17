import 'package:flutter/material.dart';
import 'package:projeto_mobile_ux_ui/pages/welcome_page.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/focus_page.dart';
import 'pages/details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/welcome',

      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/focus': (context) => const FocusPage(),
        '/details': (context) => const DetailsPage(),
        '/welcome': (context) => const WelcomePage(),
      },
    );
  }
}