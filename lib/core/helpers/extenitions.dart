import 'package:flutter/cupertino.dart';

extension navigtion on BuildContext {
  Future<dynamic> pushNamed(String route, {Object? argument}) {
    return Navigator.of(this).pushNamed(route, arguments: argument);
  }

  Future<dynamic> pushReplacementNamed(String route, {Object? argument}) {
    return Navigator.of(this).pushReplacementNamed(route, arguments: argument);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String route, {Object? argument,required RoutePredicate predicat}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(route , predicat, arguments: argument);
  }

  void pop() => Navigator.of(this).pop();
}
