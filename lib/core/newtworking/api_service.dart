import 'package:dio/dio.dart';
import 'package:docrors/features/login/data/models/login_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../features/login/data/models/login_requst_body.dart';
import 'api_constents.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: Constants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(Constants.login)
  Future<LoginResponse> login(@Body() LoginRequstBody body);
}
