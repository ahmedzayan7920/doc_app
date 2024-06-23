
import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/routing/app_routes.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
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
          onPressed: () {
            context.pushReplacementNamed(AppRoutes.login);
          },
          child: const Text("Login"),
        ),
      ],
    );
  }
}
