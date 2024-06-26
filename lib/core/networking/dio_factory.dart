import 'package:dio/dio.dart';
import 'package:doc_app/core/helpers/app_shared_pref.dart';
import 'package:doc_app/core/helpers/app_shared_pref_keys.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class DioFactory {
  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      await _addDioHeaders();
      _addDioInterceptor();
    }
    return dio!;
  }

  static Future<void> _addDioHeaders() async {
    final token = await AppSharedPref.getSecuredString(AppSharedPrefKeys.userToken);
    dio?.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $token",
    };
  }

  

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }

  static void _addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: true,
        error: true,
      ),
    );
  }
}
