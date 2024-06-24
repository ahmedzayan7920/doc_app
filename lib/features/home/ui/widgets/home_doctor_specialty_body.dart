import 'package:doc_app/core/helpers/app_images.dart';
import 'package:doc_app/core/helpers/spaces.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/app_text_styles.dart';

class HomeDoctorSpecialtyBody extends StatelessWidget {
  const HomeDoctorSpecialtyBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return SizedBox(
            height: 86.h,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28.h,
                  backgroundColor: AppColors.lighterGrey,
                  child: SvgPicture.asset(Assets.svgsGeneralSpecialty, height: 24.h,),
                ),
                VerticalSpace(12.h),
                Text("General", style: AppTextStyles.regularDarkBlue12,),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const HorizontalSpace(16),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
      ),
    );
  }
}
