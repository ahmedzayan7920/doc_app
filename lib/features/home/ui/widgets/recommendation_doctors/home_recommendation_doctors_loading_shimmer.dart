import 'package:flutter/material.dart';

import '../../../../../core/helpers/spaces.dart';
import '../../../../../core/widgets/custom_rectangle_loading_shimmer.dart';

class HomeRecommendationDoctorsLoadingShimmer extends StatelessWidget {
  const HomeRecommendationDoctorsLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return const Row(
            children: [
              CustomRectangleLoadingShimmer(width: 110, height: 110),
              HorizontalSpace(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomRectangleLoadingShimmer(
                        width: double.infinity, height: 15),
                    VerticalSpace(5),
                    CustomRectangleLoadingShimmer(
                        width: double.infinity, height: 15),
                    VerticalSpace(5),
                    CustomRectangleLoadingShimmer(width: 110, height: 15),
                  ],
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => const VerticalSpace(32),
        itemCount: 5,
      ),
    );
  }
}
