import 'package:doc_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_font_weight.dart';

abstract class AppTextStyles {
  static TextStyle boldBlack24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: AppFontWeight.bold,
    color: Colors.black,
  );
  static TextStyle boldPrimary32 = TextStyle(
    fontSize: 32.sp,
    fontWeight: AppFontWeight.bold,
    color: AppColors.primary,
  );
  static TextStyle boldPrimary24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: AppFontWeight.bold,
    color: AppColors.primary,
  );
  static TextStyle regularGrey12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: AppFontWeight.regular,
    color: AppColors.grey,
  );
  static TextStyle regularGrey14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: AppFontWeight.regular,
    color: AppColors.grey,
  );
  static TextStyle regularLightGrey14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: AppFontWeight.regular,
    color: AppColors.lightGrey,
  );
  static TextStyle mediumDarkBlue14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: AppFontWeight.medium,
    color: AppColors.darkBlue,
  );
  static TextStyle semiBoldWhite16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeight.semiBold,
    color: Colors.white,
  );
}
