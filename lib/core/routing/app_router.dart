import 'package:docrors/core/di/di.dart';
import 'package:docrors/core/routing/routes.dart';
import 'package:docrors/features/login/logic/cubit/login_cubit.dart';
import 'package:docrors/features/login/ui/login_screen.dart';
import 'package:flutter/material.dart';
import '../../features/onbording/onboardingscreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const Onboardingscreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen(),
            ));
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text("No Route Defind for ${settings.name}"),
                ),
              ),
        );
    }
  }
}
