import 'package:doc_app/features/home/data/models/specialty_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../data/repositories/home_repository.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepository;

  HomeCubit({required HomeRepository homeRepository})
      : _homeRepository = homeRepository,
        super(const HomeState.initial());

  List<SpecialtyDataModel> specialtyDataList = [];

  int selectedSpecialtyId = 1;

  Future<void> getAllSpecialty() async {
    emit(const HomeState.specialtyLoading());
    final result = await _homeRepository.getAllSpecialty();
    result.when(
      success: (specialtyResponseModel) {
        specialtyDataList = specialtyResponseModel.specialtyData;
        selectedSpecialtyId = specialtyDataList.first.id;
        emitRecommendationDoctors(specialtyId: specialtyDataList.first.id);
        emit(HomeState.specialtySuccess(
            specialtyData: specialtyResponseModel.specialtyData));
      },
      failure: (error) {
        emit(HomeState.specialtyError(errorHandler: error));
      },
    );
  }

  emitRecommendationDoctors({required int specialtyId}) {
    List<DoctorModel> doctors = _filterDoctorList(specialtyId: specialtyId);
    if (doctors.isEmpty) {
      emit(HomeState.recommendationDoctorsError(
          errorHandler:
              ErrorHandler.handle('No doctors found for this specialty.')));
    } else {
      emit(HomeState.recommendationDoctorsSuccess(doctors: doctors));
    }
  }

  List<DoctorModel> _filterDoctorList({required int specialtyId}) {
    return specialtyDataList
        .firstWhere(
          (specialty) => specialty.id == specialtyId,
        )
        .doctors;
  }
}
