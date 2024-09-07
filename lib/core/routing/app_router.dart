import 'package:docrors/core/di/di.dart';
import 'package:docrors/core/routing/routes.dart';
import 'package:docrors/features/home/logic/cubit/home_cubit.dart';
import 'package:docrors/features/home/ui/home_Screen.dart';
import 'package:docrors/features/login/logic/cubit/login_cubit.dart';
import 'package:docrors/features/login/ui/login_screen.dart';
import 'package:docrors/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import '../../features/onbording/onboardingscreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/signup/ui/signup.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const Onboardingscreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: LoginScreen(),
                ));
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<HomeCubit>()..emitHomeState(),
                  child: HomeScreen(),
                ));
      default:
        return null;
    }
  }
}
