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


SignUpResponseModelData _$SignUpResponseModelDataFromJson(
        Map<String, dynamic> json) =>
    SignUpResponseModelData(
      token: json['token'] as String?,
      username: json['username'] as String?,
    );

