import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
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
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 30.h),
                  const OnBoardingLogoAndName(),
                  SizedBox(height: 30.h),
                  const Expanded(
                    child: OnBoardingDocImageAndText(),
                  ),
                  SizedBox(height: 18.h),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      children: [
                        Text(
                          "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                          style: AppTextStyles.regularGrey12,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 32.h),
                        CustomButton(
                          onPressed: () {
                            context.pushNamed(AppRoutes.login);
                          },
                          text: "Get Started",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 57.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
