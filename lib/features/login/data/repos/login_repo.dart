import 'package:docrors/core/newtworking/api_error_handler.dart';
import 'package:docrors/core/newtworking/api_result.dart';
import 'package:docrors/core/newtworking/api_service.dart';
import 'package:docrors/features/login/data/models/login_requst_body.dart';
import 'package:docrors/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _service;

  LoginRepo(this._service);

  Future<ApiResult<LoginResponse>> login(LoginRequstBody requestboady) async {
    try {
      var response = await _service.login(requestboady);

      return ApiResult.success(response);
    } catch (e) {

      return ApiResult.faild(e.toString());
    }
  }
}
