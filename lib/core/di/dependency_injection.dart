import 'package:dio/dio.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import '../../features/login/data/repositories/login_repository.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

 initGetIt() async {
  _initNetworking();
  _initLogin();
}

_initNetworking() {
  /// Dio
  getIt.registerLazySingleton<Dio>(
    () => DioFactory.getDio(),
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

  /// Login Cubit
  getIt.registerLazySingleton<LoginCubit>(
    () => LoginCubit(
      loginRepository: getIt<LoginRepository>(),
    ),
  );
}
