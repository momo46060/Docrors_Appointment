import 'package:docrors/core/helpers/constents.dart';
import 'package:docrors/core/helpers/shared_pref_helper.dart';
import 'package:docrors/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'core/di/di.dart';
import 'doc_app.dart';

bool isLoggedIn = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  await   checkIsLogged();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIsLogged() async {
  String? token =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  print('******************************************************');
  print(token);
  print('******************************************************');
  if (token == null || token == "") {
    isLoggedIn = false;
  } else {
    isLoggedIn = true;
  }


}
