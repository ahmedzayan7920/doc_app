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


LoginResponseModelData _$LoginResponseModelDataFromJson(
        Map<String, dynamic> json) =>
    LoginResponseModelData(
      token: json['token'] as String?,
      username: json['username'] as String?,
    );

