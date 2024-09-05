import 'package:docrors/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'core/di/di.dart';
import 'doc_app.dart';

void main() {
  setUpGetIt();
  runApp(DocApp( appRouter:  AppRouter(),));
}
