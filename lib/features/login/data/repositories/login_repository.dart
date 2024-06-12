import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../models/login_request_model.dart';
import '../models/login_response_model.dart';

import '../../../../core/networking/api_result.dart';

class LoginRepository {
  final ApiService _apiService;

  LoginRepository({required ApiService apiService}) : _apiService = apiService;

  Future<ApiResult<LoginResponseModel>> login(
      {required LoginRequestModel loginRequestBody}) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
