import 'package:flutter/material.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/theming/app_text_styles.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
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
              "Create Account",
              style: AppTextStyles.boldPrimary24,
            ),
          ],
        ),
        const VerticalSpace(8),
        Text(
          "Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!",
          style: AppTextStyles.regularGrey14,
        ),
      ],
    );
  }
}