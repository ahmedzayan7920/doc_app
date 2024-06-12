import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';

import '../../../../core/networking/api_result.dart';
import '../models/sign_up_request_model.dart';
import '../models/sign_up_response_model.dart';

class SignUpRepository {
  final ApiService _apiService;

  SignUpRepository({required ApiService apiService}) : _apiService = apiService;

  Future<ApiResult<SignUpResponseModel>> signUp(
      {required SignUpRequestModel signUpRequestBody}) async {
    try {
      final response = await _apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
