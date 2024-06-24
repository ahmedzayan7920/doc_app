import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';

class HomeRecommendationDoctorTitle extends StatelessWidget {
  const HomeRecommendationDoctorTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Recommendation Doctor", style: AppTextStyles.semiBoldDarkBlue18),
        Text(
          "See All",
          style: AppTextStyles.regularPrimary12,
        ),
      ],
    );
  }
}
