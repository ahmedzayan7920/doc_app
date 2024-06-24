import 'package:doc_app/core/helpers/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_doctor_specialty_body.dart';
import 'home_doctor_specialty_title.dart';

class HomeDoctorSpecialtySection extends StatelessWidget {
  const HomeDoctorSpecialtySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeDoctorSpecialtyTitle(),
        VerticalSpace(16.h),
        const HomeDoctorSpecialtyBody(),
      ],
    );
  }
}
