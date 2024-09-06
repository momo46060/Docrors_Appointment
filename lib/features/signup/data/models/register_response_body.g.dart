// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRsponseBody _$RegisterRsponseBodyFromJson(Map<String, dynamic> json) =>
    RegisterRsponseBody(
      json['message'] as String,
      Data.fromJson(json['data'] as Map<String, dynamic>),
      json['status'] as bool,
      (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$RegisterRsponseBodyToJson(
        RegisterRsponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userDate,
      'status': instance.status,
      'code': instance.code,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      json['token'] as String,
      json['username'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'token': instance.token,
      'username': instance.userName,
    };
