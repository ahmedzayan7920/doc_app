import 'package:doc_app/core/widgets/custom_circle_loading_shimmer.dart';
import 'package:doc_app/core/widgets/custom_rectangle_loading_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spaces.dart';

class HomeSpecialtyLoadingShimmer extends StatelessWidget {
  const HomeSpecialtyLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return SizedBox(
            height: 86.h,
            child: const Column(
              children: [
                CustomCircleLoadingShimmer(radius: 28),
                VerticalSpace(12),
                CustomRectangleLoadingShimmer(width: 100, height: 15),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const HorizontalSpace(16),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
      ),
    );
  }
}
