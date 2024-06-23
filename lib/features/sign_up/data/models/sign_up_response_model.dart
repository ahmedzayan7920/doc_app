import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response_model.g.dart';

@JsonSerializable()
class SignUpResponseModel {
  final String message;
  final SignUpResponseModelData data;
  final bool status;
  final int code;

  SignUpResponseModel(
      {required this.message,
      required this.data,
      required this.status,
      required this.code});

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseModelFromJson(json);
}

@JsonSerializable()
class SignUpResponseModelData {
  String? token;
  String? username;

  SignUpResponseModelData({this.token, this.username});
  factory SignUpResponseModelData.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseModelDataFromJson(json);
}
