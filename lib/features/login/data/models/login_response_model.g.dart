// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      message: json['message'] as String,
      data:
          LoginResponseModelData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'status': instance.status,
      'code': instance.code,
    };

LoginResponseModelData _$LoginResponseModelDataFromJson(
        Map<String, dynamic> json) =>
    LoginResponseModelData(
      token: json['token'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$LoginResponseModelDataToJson(
        LoginResponseModelData instance) =>
    <String, dynamic>{
      'token': instance.token,
      'username': instance.username,
    };
