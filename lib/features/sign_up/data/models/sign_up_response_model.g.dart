// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponseModel _$SignUpResponseModelFromJson(Map<String, dynamic> json) =>
    SignUpResponseModel(
      message: json['message'] as String,
      data: SignUpResponseModelData.fromJson(
          json['data'] as Map<String, dynamic>),
      status: json['status'] as bool,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$SignUpResponseModelToJson(
        SignUpResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'status': instance.status,
      'code': instance.code,
    };

SignUpResponseModelData _$SignUpResponseModelDataFromJson(
        Map<String, dynamic> json) =>
    SignUpResponseModelData(
      token: json['token'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$SignUpResponseModelDataToJson(
        SignUpResponseModelData instance) =>
    <String, dynamic>{
      'token': instance.token,
      'username': instance.username,
    };
