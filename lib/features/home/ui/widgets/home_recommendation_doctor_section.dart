import 'package:doc_app/core/helpers/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_recommendation_doctor_body.dart';
import 'home_recommendation_doctor_title.dart';

class HomeRecommendationDoctorSection extends StatelessWidget {
  const HomeRecommendationDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeRecommendationDoctorTitle(),
        VerticalSpace(16.h),
        const Expanded(
          child: HomeRecommendationDoctorBody(),
        ),
      ],
    );
  }
}
