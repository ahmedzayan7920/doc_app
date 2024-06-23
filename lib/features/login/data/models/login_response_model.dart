import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final String message;
  final LoginResponseModelData data;
  final bool status;
  final int code;

  LoginResponseModel(
      {required this.message,
      required this.data,
      required this.status,
      required this.code});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@JsonSerializable()
class LoginResponseModelData {
  String? token;
  String? username;

  LoginResponseModelData({this.token, this.username});
  factory LoginResponseModelData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelDataFromJson(json);
}
