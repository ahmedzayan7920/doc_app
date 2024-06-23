import 'package:flutter/material.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/theming/app_text_styles.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: AppTextStyles.boldPrimary24,
            ),
          ],
        ),
        const VerticalSpace(8),
        Text(
          "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
          style: AppTextStyles.regularGrey14,
        ),
      ],
    );
  }
}