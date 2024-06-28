import 'package:doc_app/core/helpers/spaces.dart';
import 'package:doc_app/features/home/ui/widgets/specialty/home_specialty_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/specialty_response_model.dart';
import '../../../logic/cubit/home_cubit.dart';

class HomeSpecialtyBody extends StatefulWidget {
  const HomeSpecialtyBody({
    super.key,
    required this.specialtyData,
  });
  final List<SpecialtyDataModel> specialtyData;

  @override
  State<HomeSpecialtyBody> createState() =>
      _HomeSpecialtyBodyState();
}

class _HomeSpecialtyBodyState extends State<HomeSpecialtyBody> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              context.read<HomeCubit>().emitRecommendationDoctors(
                  specialtyId: widget.specialtyData[index].id);
            },
            child: HomeSpecialtyItem(
              specialtyDataModel: widget.specialtyData[index],
              isSelected: selectedIndex == index,
            ),
          );
        },
        separatorBuilder: (context, index) => const HorizontalSpace(16),
        scrollDirection: Axis.horizontal,
        itemCount: widget.specialtyData.length,
      ),
    );
  }
}
