import '../../../../core/helpers/app_regex.dart';
import '../../../../core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../logic/cubit/login_cubit.dart';

class PasswordValidator extends StatefulWidget {
  const PasswordValidator({
    super.key,
  });

  @override
  State<PasswordValidator> createState() => _PasswordValidatorState();
}

class _PasswordValidatorState extends State<PasswordValidator> {
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinLength = false;
  @override
  void initState() {
    context.read<LoginCubit>().passwordController.addListener(() {
      final password = context.read<LoginCubit>().passwordController.text;
      hasLowerCase = AppRegex.hasLowerCase(password);
      hasUpperCase = AppRegex.hasUpperCase(password);
      hasNumber = AppRegex.hasNumber(password);
      hasSpecialCharacter = AppRegex.hasSpecialCharacter(password);
      hasMinLength = AppRegex.hasMinLength(password);
      context.read<LoginCubit>().isPasswordValidate = hasLowerCase &&
          hasUpperCase &&
          hasNumber &&
          hasSpecialCharacter &&
          hasMinLength;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _PasswordValidatorRow(
          text: "At least 1 lowercase letter",
          isValid: hasLowerCase,
        ),
        VerticalSpace(2.h),
        _PasswordValidatorRow(
          text: "At least 1 uppercase letter",
          isValid: hasUpperCase,
        ),
        VerticalSpace(2.h),
        _PasswordValidatorRow(
          text: "At least 1 number",
          isValid: hasNumber,
        ),
        VerticalSpace(2.h),
        _PasswordValidatorRow(
          text: "At least 1 special character (eg. !@#\$%^&*)",
          isValid: hasSpecialCharacter,
        ),
        VerticalSpace(2.h),
        _PasswordValidatorRow(
          text: "At least 8 characters",
          isValid: hasMinLength,
        ),
      ],
    );
  }
}

class _PasswordValidatorRow extends StatelessWidget {
  final String text;
  final bool isValid;
  const _PasswordValidatorRow({
    required this.text,
    required this.isValid,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5.w,
          backgroundColor: AppColors.grey,
        ),
        const HorizontalSpace(6),
        Text(
          text,
          style: AppTextStyles.mediumDarkBlue14.copyWith(
            decoration: isValid ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: isValid ? AppColors.grey : AppColors.darkBlue,
          ),
        ),
      ],
    );
  }
}
