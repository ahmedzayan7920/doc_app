import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:doc_app/core/networking/api_result.dart';

import '../api/home_api_service.dart';
import '../models/specialty_response_model.dart';

class HomeRepository {
  final HomeApiService _apiService;

  HomeRepository({required HomeApiService apiService})
      : _apiService = apiService;
  Future<ApiResult<SpecialtyResponseModel>> getAllSpecialty() async {
    try {
      final response = await _apiService.getAllSpecialty();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
