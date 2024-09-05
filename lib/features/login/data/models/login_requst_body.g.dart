// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_requst_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequstBody _$LoginRequstBodyFromJson(Map<String, dynamic> json) =>
    LoginRequstBody(
      json['email'] as String,
      json['password'] as String,
    );

Map<String, dynamic> _$LoginRequstBodyToJson(LoginRequstBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
