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
      _addDioHeaders();
      _addDioInterceptor();
    }
    return dio!;
  }

  static void _addDioHeaders() {
    dio?.options.headers = {
      "Accept" : "application/json",
      "Authorization" : "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzE5MzMwMzk1LCJleHAiOjE3MTk0MTY3OTUsIm5iZiI6MTcxOTMzMDM5NSwianRpIjoiSW9NQlFKRVpnd3lSa1lmMyIsInN1YiI6IjEzMTAiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.IkMk0E-H25Chq3nMwUSThcLCDnZEFZza7n8LRvRhulE",
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
