import 'package:doc_app/features/home/data/models/specialty_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../../logic/cubit/home_cubit.dart';
import '../../../logic/cubit/home_state.dart';
import 'home_specialty_body.dart';
import 'home_specialty_loading_shimmer.dart';

class HomeSpecialtyBlocBuilder extends StatelessWidget {
  const HomeSpecialtyBlocBuilder({super.key});

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
          specialtySuccess: (specialtyData) => setupSuccess(specialtyData),
          specialtyError: (errorHandler) => setupError(errorHandler),
          orElse: () => const HomeSpecialtyLoadingShimmer(),
        );
      },
    );
  }


  Widget setupError(ErrorHandler errorHandler) => const SizedBox.shrink();

  Widget setupSuccess(List<SpecialtyDataModel> specialtyData) {
    return HomeSpecialtyBody(
      specialtyData: specialtyData,
    );
  }
}
