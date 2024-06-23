
import 'package:doc_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/app_routes.dart';
import '../../../../core/theming/app_text_styles.dart';

class DoNotHaveAccount extends StatelessWidget {
  const DoNotHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: AppTextStyles.regularGrey14,
        ),
        TextButton(
          onPressed: () {
            context.pushReplacementNamed(AppRoutes.signUp);
          },
          child: const Text("Sign Up"),
        ),
      ],
    );
  }
}
