import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/features/home/data/models/specialty_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/app_images.dart';
import '../../../../../core/helpers/spaces.dart';
import '../../../../../core/theming/app_text_styles.dart';

class HomeSpecialtyItem extends StatelessWidget {
  const HomeSpecialtyItem(
      {super.key, required this.specialtyDataModel, required this.isSelected});
  final SpecialtyDataModel specialtyDataModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: Column(
        children: [
          CircleAvatar(
            radius: 28.h,
            backgroundColor:
                isSelected ? AppColors.primary : AppColors.lighterGrey,
            child: CircleAvatar(
              radius: 26.h,
              backgroundColor: AppColors.lighterGrey,
              child: SvgPicture.asset(
                Assets.svgsGeneralSpecialty,
                height: 24.h,
              ),
            ),
          ),
          VerticalSpace(12.h),
          Text(
            specialtyDataModel.name,
            style: isSelected
                ? AppTextStyles.boldPrimary12
                : AppTextStyles.regularDarkBlue12,
          ),
        ],
      ),
    );
  }
}
