import 'package:flutter/material.dart';
import 'package:store_app/app_route.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Store());
}

class Store extends StatelessWidget {
  final AppRoute _appRoute = AppRoute();
  Store({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => _appRoute.generateRoute(settings),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}