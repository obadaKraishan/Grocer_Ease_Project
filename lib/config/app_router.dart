// lib/config/app_router.dart

import 'package:flutter/material.dart';
import 'package:grocer_ease/presentation/screens/home/home_screen.dart';
import 'package:grocer_ease/presentation/screens/auth/login_screen.dart';
import 'package:grocer_ease/presentation/screens/auth/register_screen.dart';
// Import other screens...

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterScreen());
    // Add other routes...
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
