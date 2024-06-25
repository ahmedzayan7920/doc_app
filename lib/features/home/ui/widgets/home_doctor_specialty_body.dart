import 'package:doc_app/core/helpers/spaces.dart';
import 'package:doc_app/features/home/ui/widgets/home_doctor_specialty_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/specialty_response_model.dart';

class HomeDoctorSpecialtyBody extends StatelessWidget {
  const HomeDoctorSpecialtyBody({
    super.key,
    required this.specialtyData,
  });
  final List<SpecialtyDataModel> specialtyData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return HomeDoctorSpecialtyItem(
            specialtyDataModel: specialtyData[index],
          );
        },
        separatorBuilder: (context, index) => const HorizontalSpace(16),
        scrollDirection: Axis.horizontal,
        itemCount: specialtyData.length,
      ),
    );
  }
}
