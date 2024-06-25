import 'package:doc_app/core/helpers/spaces.dart';
import 'package:doc_app/features/home/ui/widgets/home_specialty_and_recommended_doctors_bloc_builder.dart';
import 'package:flutter/material.dart';

import '../widgets/home_doctor_specialty_title.dart';
import '../widgets/home_find_nearby_doctors.dart';
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
              HomeDoctorSpecialtyTitle(),
              VerticalSpace(16),
              HomeSpecialtyAndRecommendedDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
