import 'package:dio/dio.dart';
import 'package:docrors/core/helpers/constents.dart';
import 'package:docrors/core/helpers/shared_pref_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addInterceptor();
      addDioHeaders();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async{
    dio?.options.headers = {
      'Accept': 'Application/json',
      'Authorization':
          "Bearer ${await SharedPrefHelper.getString(SharedPrefKeys.userToken)}"
    };
  }

  static void setTokenToHeaders() async{
    dio?.options.headers = {
      'Accept': 'Application/json',
      'Authorization':
      "Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}"
    };
  }

  static void addInterceptor() {
    dio?.interceptors.add(PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true));
  }
}
