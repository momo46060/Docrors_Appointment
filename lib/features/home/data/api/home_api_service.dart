import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/newtworking/api_constents.dart';
import '../models/home_response_moodel.dart';
import 'home_api_constenst.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: Constants.apiBaseUrl)
abstract class HomeApi {
  factory HomeApi(Dio dio, {String baseUrl}) = _HomeApi;


  @GET(HomeApiConstenst.Specialtzion)
  Future<SpecializationsResponseModel>getHomeData();

}
