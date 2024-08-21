import 'package:docrors/core/routing/routes.dart';
import 'package:docrors/features/login/ui/login_screen.dart';
import 'package:flutter/material.dart';
import '../../features/onbording/onboardingscreen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const Onboardingscreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Route Defind for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
