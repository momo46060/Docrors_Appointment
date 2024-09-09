import 'package:docrors/core/routing/app_router.dart';
import 'package:docrors/core/routing/routes.dart';
import 'package:docrors/core/theming/colors.dart';
import 'package:docrors/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {

  final AppRouter appRouter;

  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    print('******************************************************');
    print('******************************************************');
    print('isLoggedIn : ${isLoggedIn.toString()}' );
    print('******************************************************');
    print('******************************************************');
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
          title: "DocApp",
          theme: ThemeData(
              primaryColor: ColorsManger.mainBlue,
              scaffoldBackgroundColor: Colors.white
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: isLoggedIn ? Routes.homeScreen : Routes.onBoarding,
      onGenerateRoute: appRouter.generateRoute,
    ),);
  }
}

