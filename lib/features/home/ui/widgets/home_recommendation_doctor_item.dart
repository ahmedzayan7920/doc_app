import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../data/models/specialty_response_model.dart';

class HomeRecommendationDoctorItem extends StatelessWidget {
  const HomeRecommendationDoctorItem({
    super.key, required this.doctor,
  });

  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl:
              doctor.photo,
          imageBuilder: (context, imageProvider) => Container(
            width: 110.w,
            height: 110.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.w),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      const HorizontalSpace(16),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doctor.name,
              style: AppTextStyles.boldDarkBlue18,
              overflow: TextOverflow.ellipsis,
            ),
            const VerticalSpace(5),
            Text(
              '${doctor.degree} | ${doctor.phone}',
              style: AppTextStyles.mediumGrey12,
            ),
            const VerticalSpace(5),
            Text(
               doctor.email,
              style: AppTextStyles.mediumGrey12,
            ),
          ],
        ),
      ),
      ],
    );
  }
}
