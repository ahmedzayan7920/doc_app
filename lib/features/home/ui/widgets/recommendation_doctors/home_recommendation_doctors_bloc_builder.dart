import 'package:doc_app/features/home/data/models/specialty_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../../logic/cubit/home_cubit.dart';
import '../../../logic/cubit/home_state.dart';
import 'home_recommendation_doctors_body.dart';
import 'home_recommendation_doctors_loading_shimmer.dart';

class HomeRecommendationDoctorsBlocBuilder extends StatelessWidget {
  const HomeRecommendationDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          previous != current &&
          (current is RecommendationDoctorsSuccess ||
              current is RecommendationDoctorsError),
      builder: (context, state) {
        return state.maybeWhen(
          recommendationDoctorsSuccess: (doctors) =>
               setupSuccess(doctors),
          specialtyError: (errorHandler) => setupError(errorHandler),
          orElse: () => const HomeRecommendationDoctorsLoadingShimmer(),
        );
      },
    );
  }

  Widget setupError(ErrorHandler errorHandler) => const SizedBox.shrink();

  Widget setupSuccess(List<DoctorModel> doctors) {
    return HomeRecommendationDoctorsBody(
      doctors: doctors,
    );
  }
}
