import 'package:doc_app/core/helpers/spaces.dart';
import 'package:doc_app/features/home/data/models/specialty_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import 'home_doctor_specialty_body.dart';
import 'home_recommendation_doctor_body.dart';

class HomeSpecialtyAndRecommendedDoctorsBlocBuilder extends StatelessWidget {
  const HomeSpecialtyAndRecommendedDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          previous != current &&
          (current is SpecialtySuccess ||
              current is SpecialtyError ||
              current is SpecialtyLoading),
      builder: (context, state) {
        return state.maybeWhen(
          specialtySuccess: (specialtyResponseModel) =>
              setupSuccess(specialtyResponseModel),
          specialtyError: (errorHandler) => setupError(errorHandler),
          specialtyLoading: () => setupLoading(),
          orElse: () => setupLoading(),
        );
      },
    );
  }

  Center setupLoading() => const Center(child: CircularProgressIndicator());

  Widget setupError(ErrorHandler errorHandler) => const SizedBox.shrink();

  Widget setupSuccess(SpecialtyResponseModel specialtyResponseModel) {
    return Expanded(
      child: Column(
        children: [
          HomeDoctorSpecialtyBody(
            specialtyData: specialtyResponseModel.specialtyData,
          ),
          VerticalSpace(24.h),
          Expanded(
            child: HomeRecommendationDoctorBody(
              specialtyData: specialtyResponseModel.specialtyData,
            ),
          ),
        ],
      ),
    );
  }
}
