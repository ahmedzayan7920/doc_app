import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repositories/home_repository.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepository;

  HomeCubit({required HomeRepository homeRepository})
      : _homeRepository = homeRepository,
        super(const HomeState.initial());

  Future<void> getAllSpecialty() async {
    emit(const HomeState.specialtyLoading());
    final result = await _homeRepository.getAllSpecialty();
    result.when(
      success: (specialtyResponseModel) {
        emit( HomeState.specialtySuccess(specialtyResponseModel: specialtyResponseModel));
      },
      failure: (error) {
        emit(HomeState.specialtyError(errorHandler: error));
      },
    );
  }
}
