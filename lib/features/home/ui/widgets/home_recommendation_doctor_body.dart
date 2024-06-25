import 'package:doc_app/core/helpers/spaces.dart';
import 'package:flutter/material.dart';

import '../../data/models/specialty_response_model.dart';
import 'home_recommendation_doctor_item.dart';

class HomeRecommendationDoctorBody extends StatelessWidget {
  const HomeRecommendationDoctorBody({
    super.key, required this.specialtyData});
  final List<SpecialtyDataModel> specialtyData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return HomeRecommendationDoctorItem(doctor: specialtyData[0].doctors[index]);
      },
      separatorBuilder: (context, index) =>  const VerticalSpace(32),
      itemCount: specialtyData[0].doctors.length,
    );
  }
}

