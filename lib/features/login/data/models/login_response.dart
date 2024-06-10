import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String message;
  final LoginResponseData data;
  final bool status;
  final int code;

  LoginResponse(
      {required this.message,
      required this.data,
      required this.status,
      required this.code});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class LoginResponseData {
  String? token;
  String? username;

  LoginResponseData({this.token, this.username});
  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
}
