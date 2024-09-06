import 'package:docrors/core/newtworking/api_result.dart';
import 'package:docrors/core/newtworking/api_service.dart';
import 'package:docrors/features/signup/data/models/register_request_body.dart';
import 'package:docrors/features/signup/data/models/register_response_body.dart';

class SignUpRepo{
  final ApiService _service;

  SignUpRepo(this._service);

  Future<ApiResult<RegisterRsponseBody>> signUp(RegisterRequestBody body)async{
    try{
      var response = await _service.register(body);
      return ApiResult.success(response);
    }catch(e){
      return ApiResult.faild(e.toString());
    }
  }
}