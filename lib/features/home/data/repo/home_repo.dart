import 'package:docrors/core/newtworking/api_result.dart';
import 'package:docrors/features/home/data/api/home_api_service.dart';
import 'package:docrors/features/home/data/models/home_response_moodel.dart';

class HomeRepo {
  final HomeApi _service;

  HomeRepo(this._service);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      var response = await _service.getHomeData();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.faild(e.toString());
    }
  }
}
