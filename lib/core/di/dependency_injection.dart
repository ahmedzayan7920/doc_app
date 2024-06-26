import 'package:dio/dio.dart';
import 'package:doc_app/features/home/data/api/home_api_service.dart';
import 'package:doc_app/features/home/data/repositories/home_repository.dart';
import '../../features/sign_up/data/repositories/sign_up_repository.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import '../../features/login/data/repositories/login_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

initGetIt() async {
  await _initNetworking();
  _initLogin();
  _initSignUp();
  _initHome();
}

_initNetworking() async {
  /// Dio
  final dio = await DioFactory.getDio();
  getIt.registerLazySingleton<Dio>(
    () => dio,
  );

  /// Api Service
  getIt.registerLazySingleton<ApiService>(
    () => ApiService(
      getIt<Dio>(),
    ),
  );
}

_initLogin() {
  /// Login Repository
  getIt.registerLazySingleton<LoginRepository>(
    () => LoginRepository(
      apiService: getIt<ApiService>(),
    ),
  );
}

_initSignUp() {
  /// SignUp Repository
  getIt.registerLazySingleton<SignUpRepository>(
    () => SignUpRepository(
      apiService: getIt<ApiService>(),
    ),
  );
}

_initHome() {
  /// Home Api Service
  getIt.registerLazySingleton<HomeApiService>(
    () => HomeApiService(
      getIt<Dio>(),
    ),
  );

  /// Home Repository
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepository(
      apiService: getIt<HomeApiService>(),
    ),
  );
}
