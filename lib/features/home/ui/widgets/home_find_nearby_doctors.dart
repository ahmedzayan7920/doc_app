import 'package:doc_app/core/helpers/app_images.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeFindNearbyDoctors extends StatelessWidget {
  const HomeFindNearbyDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            height: 167.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
            decoration: BoxDecoration(
              image:  const DecorationImage(
            image: AssetImage(Assets.imagesHomeBluePattern),
            fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(24.w),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book and \nschedule with \nnearest doctor",
                  style: AppTextStyles.mediumWhite18,
                ),
                const Spacer(),
                CustomButton(
                  height: 38.h,
                  width: 109.w,
                  backgroundColor: Colors.white,
                  foregroundColor: AppColors.primary,
                  onPressed: () {},
                  text: "Find Nearby",
                ),
              ],
            ),
          ),
          PositionedDirectional(
            end: 15,
            child: Image.asset(Assets.imagesHomeGirlDoctor, height: 197.h),
          ),
        ],
      ),
    );
  }
}
