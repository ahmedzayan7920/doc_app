import 'package:doc_app/core/helpers/spaces.dart';
import 'package:flutter/material.dart';

import '../../../data/models/specialty_response_model.dart';
import 'home_recommendation_doctors_item.dart';

class HomeRecommendationDoctorsBody extends StatelessWidget {
  const HomeRecommendationDoctorsBody({super.key, required this.doctors});
  final List<DoctorModel> doctors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
            itemBuilder: (context, index) {
              return HomeRecommendationDoctorsItem(
                  doctor: doctors[index]);
            },
            separatorBuilder: (context, index) => const VerticalSpace(32),
            itemCount: doctors.length,
          ),
    );
  }
}
