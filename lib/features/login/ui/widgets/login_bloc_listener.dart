import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamedAndRemoveUntil(
              AppRoutes.home,
              predicate: (context) => false,
            );
          },
          error: (message) {
            context.pop();
            setupErrorState(context, message);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          message,
          style: AppTextStyles.mediumDarkBlue14,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: AppTextStyles.mediumDarkBlue14,
            ),
          ),
        ],
      ),
    );
  }
}
