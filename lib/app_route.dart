import 'package:flutter/material.dart';
import 'package:store_app/presentation/screens/home_screen.dart';
import 'package:store_app/presentation/screens/log_in_screen.dart';
import 'package:store_app/presentation/screens/register_screen.dart';
import 'package:store_app/presentation/screens/splash_screen.dart';


class AppRoute {

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.route:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );


      case HomeScreen.route:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );


      case LogInScreen.route:
        return MaterialPageRoute(
          builder: (_) => const LogInScreen(),
        );


      case RegisterScreen.route:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen()
        );


      default:
        return null;
    }
  }
}