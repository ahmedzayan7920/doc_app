import 'package:doc_app/core/helpers/app_images.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingLogoAndName extends StatelessWidget {
  const OnBoardingLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.svgsLogo),
        SizedBox(width: 10.w),
        Text("Docdoc", style: AppTextStyles.boldBlack24),
      ],
    );
  }
}
