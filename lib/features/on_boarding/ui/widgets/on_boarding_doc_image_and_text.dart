import 'package:doc_app/core/helpers/app_images.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingDocImageAndText extends StatelessWidget {
  const OnBoardingDocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          top: -0.h,
          child: SvgPicture.asset(Assets.svgsLogoWithOpacity),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(Assets.imagesOnBoardingDoctor),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Text(
            "Best Doctor Appointment App",
            style: AppTextStyles.boldPrimary32,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
