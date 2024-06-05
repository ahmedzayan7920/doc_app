import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/on_boarding_doc_image_and_text.dart';
import '../widgets/on_boarding_logo_and_name.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const OnBoardingLogoAndName(),
                SizedBox(height: 30.h),
                const OnBoardingDocImageAndText(),
                SizedBox(height: 18.h),
                Text(
                  "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                  style: AppTextStyles.regularGrey12,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32.h),
                CustomButton(
                  onPressed: () {},
                  text: "Get Started",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
