import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response_body.g.dart';



@JsonSerializable()
class RegisterRsponseBody {
  final String message;
  @JsonKey(name: 'data')
  final Data userDate;
  final bool status;
  final int code;

  RegisterRsponseBody(this.message, this.userDate, this.status, this.code);
  factory RegisterRsponseBody.fromJson (Map<String,dynamic> json)=> _$RegisterRsponseBodyFromJson(json);
}

@JsonSerializable()
class Data {
  final String token;
  @JsonKey(name: 'username')
  final String userName;

  Data(this.token, this.userName);
  factory Data.fromJson (Map<String,dynamic> json)=> _$DataFromJson(json);


}