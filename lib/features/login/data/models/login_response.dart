import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String message;
  @JsonKey(name: 'data')
  final Data userDate;
  final bool status;
  final int code;

  LoginResponse(this.message, this.userDate, this.status, this.code);
  factory LoginResponse.fromJson (Map<String,dynamic> json)=> _$LoginResponseFromJson(json);
}

@JsonSerializable()
class Data {
  final String token;
  @JsonKey(name: 'username')
  final String userName;

  Data(this.token, this.userName);
  factory Data.fromJson (Map<String,dynamic> json)=> _$DataFromJson(json);


}
