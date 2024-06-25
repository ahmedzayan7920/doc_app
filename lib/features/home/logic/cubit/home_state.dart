
import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/specialty_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // SPECIALTY
  const factory HomeState.specialtyLoading() = SpecialtyLoading;
  const factory HomeState.specialtySuccess({required SpecialtyResponseModel specialtyResponseModel}) = SpecialtySuccess;
  const factory HomeState.specialtyError({required ErrorHandler errorHandler}) = SpecialtyError;
}
