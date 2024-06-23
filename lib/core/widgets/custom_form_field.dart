import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hint,
    this.obscureText = false,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.autovalidateMode,
    this.keyboardType,
  });
  final String hint;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      autovalidateMode: autovalidateMode,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      style: AppTextStyles.mediumDarkBlue14,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: const Color(0xFFFDFDFF),
        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.primary,
        hintText: hint,
        hintStyle: AppTextStyles.regularLightGrey14,
        enabledBorder: _getOutlineBorder(color: AppColors.lighterGrey),
        focusedBorder: _getOutlineBorder(color: AppColors.primary),
        errorBorder: _getOutlineBorder(color: AppColors.error),
        focusedErrorBorder: _getOutlineBorder(color: AppColors.error),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 18.h,
        ),
      ),
    );
  }

  OutlineInputBorder _getOutlineBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.w),
      borderSide: BorderSide(
        color: color,
        width: 1.5,
      ),
    );
  }
}
