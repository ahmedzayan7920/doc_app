import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = AppColors.primary,
     this.foregroundColor = Colors.white,
    this.height = 54,
     this.width = double.infinity,
  });
  final void Function()? onPressed;
  final String text;
  final Color backgroundColor;
  final Color foregroundColor;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.w),
          ),
          textStyle: AppTextStyles.semiBoldWhite16,
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
