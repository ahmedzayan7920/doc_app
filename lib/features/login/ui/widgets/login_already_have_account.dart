
import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';

class LoginAlreadyHaveAccount extends StatelessWidget {
  const LoginAlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style: AppTextStyles.regularGrey14,
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Sign Up"),
        ),
      ],
    );
  }
}
