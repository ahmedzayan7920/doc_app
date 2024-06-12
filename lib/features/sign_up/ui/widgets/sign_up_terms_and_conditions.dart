
import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';

class SignUpTermsAndConditions extends StatelessWidget {
  const SignUpTermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging in you agree to our  ",
            style: AppTextStyles.regularGrey14,
          ),
          TextSpan(
            text: "Terms & Conditions ",
            style: AppTextStyles.mediumDarkBlue14,
          ),
          TextSpan(
            text: "and ",
            style: AppTextStyles.regularGrey14,
          ),
          TextSpan(
            text: "Privacy Policy.",
            style: AppTextStyles.mediumDarkBlue14,
          ),
        ],
      ),
    );
  }
}