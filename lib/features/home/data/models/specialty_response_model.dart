import 'package:json_annotation/json_annotation.dart';

part 'specialty_response_model.g.dart';

@JsonSerializable()
class SpecialtyResponseModel {
  @JsonKey(name: "data")
  List<SpecialtyDataModel> specialtyData;

  SpecialtyResponseModel({required this.specialtyData});

  factory SpecialtyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialtyResponseModelFromJson(json);
}

@JsonSerializable()
class SpecialtyDataModel {
  int id;
  String name;
  @JsonKey(name: "doctors")
  List<DoctorModel> doctors;

  SpecialtyDataModel(
      {required this.id, required this.name, required this.doctors});

  factory SpecialtyDataModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialtyDataModelFromJson(json);
}

@JsonSerializable()
class DoctorModel {
  int id;
  String name;
  String email;
  String phone;
  String photo;
  String gender;
  @JsonKey(name: "appoint_price")
  int price;
  String degree;

  DoctorModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.photo,
    required this.gender,
    required this.price,
    required this.degree,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}
