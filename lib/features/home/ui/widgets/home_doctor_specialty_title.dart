import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';

class HomeDoctorSpecialtyTitle extends StatelessWidget {
  const HomeDoctorSpecialtyTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Doctor Specialty", style: AppTextStyles.semiBoldDarkBlue18),
        Text(
          "See All",
          style: AppTextStyles.regularPrimary12,
        ),
      ],
    );
  }
}
