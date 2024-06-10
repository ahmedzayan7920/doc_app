import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class DioFactory {
  static Dio? dio;

  static Dio getDio()  {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      _addDioInterceptor();
    }
    return dio!;
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
