import 'package:flutter/material.dart';

import '../../../../../core/theming/app_text_styles.dart';

class HomeRecommendationDoctorsTitle extends StatelessWidget {
  const HomeRecommendationDoctorsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Recommendation Doctors", style: AppTextStyles.semiBoldDarkBlue18),
        Text(
          "See All",
          style: AppTextStyles.regularPrimary12,
        ),
      ],
    );
  }
}
