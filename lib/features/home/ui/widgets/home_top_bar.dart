import 'package:doc_app/core/helpers/app_images.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/app_text_styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "Hello, Ahmed",
              style: AppTextStyles.boldDarkBlue18,
            ),
            Text(
              "How Are you Today?",
              style: AppTextStyles.regularGrey12,
            ),
          ],
        ),
        InkWell(
          onTap: () {},
          child: CircleAvatar(
            radius: 24.r,
            backgroundColor: AppColors.lighterGrey,
            child: SvgPicture.asset(
              Assets.svgsNotifications,
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),
      ],
    );
  }
}
