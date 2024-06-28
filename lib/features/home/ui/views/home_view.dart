import 'package:doc_app/core/helpers/spaces.dart';
import 'package:doc_app/features/home/ui/widgets/recommendation_doctors/home_recommendation_doctors_title.dart';
import 'package:doc_app/features/home/ui/widgets/specialty/home_specialty_bloc_builder.dart';
import 'package:flutter/material.dart';

import '../widgets/specialty/home_doctors_specialty_title.dart';
import '../widgets/home_find_nearby_doctors.dart';
import '../widgets/recommendation_doctors/home_recommendation_doctors_bloc_builder.dart';
import '../widgets/home_top_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              HomeTopBar(),
              HomeFindNearbyDoctors(),
              VerticalSpace(24),
              HomeDoctorsSpecialtyTitle(),
              VerticalSpace(16),
              HomeSpecialtyBlocBuilder(),
              VerticalSpace(24),
              HomeRecommendationDoctorsTitle(),
              VerticalSpace(16),
              HomeRecommendationDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
