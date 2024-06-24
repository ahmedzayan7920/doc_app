import 'package:cached_network_image/cached_network_image.dart';
import 'package:doc_app/core/helpers/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_text_styles.dart';

class HomeRecommendationDoctorBody extends StatelessWidget {
  const HomeRecommendationDoctorBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Row(
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
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
                  'Name',
                  style: AppTextStyles.boldDarkBlue18,
                  overflow: TextOverflow.ellipsis,
                ),
                const VerticalSpace(5),
                Text(
                  'Degree | 01115151515',
                  style: AppTextStyles.mediumGrey12,
                ),
                const VerticalSpace(5),
                Text(
                   'Email',
                  style: AppTextStyles.mediumGrey12,
                ),
              ],
            ),
          ),
          ],
        );
      },
      separatorBuilder: (context, index) =>  const VerticalSpace(32),
      itemCount: 10,
    );
  }
}
