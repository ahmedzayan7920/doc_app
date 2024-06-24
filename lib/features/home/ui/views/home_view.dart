import 'package:doc_app/core/helpers/spaces.dart';
import 'package:doc_app/features/home/ui/widgets/home_recommendation_doctor_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/home_doctor_specialty_section.dart';
import '../widgets/home_find_nearby_doctors.dart';
import '../widgets/home_top_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const HomeTopBar(),
              const HomeFindNearbyDoctors(),
              VerticalSpace(24.h),
              const HomeDoctorSpecialtySection(),
              VerticalSpace(24.h),
              const Expanded(child: HomeRecommendationDoctorSection()),
            ],
          ),
        ),
      ),
    );
  }
}