import 'package:dio/dio.dart';
import '../../features/sign_up/data/repositories/sign_up_repository.dart';
import '../../features/sign_up/logic/cubit/sign_up_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import '../../features/login/data/repositories/login_repository.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

initGetIt() async {
  _initNetworking();
  _initLogin();
  _initSignUp();
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
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(
      loginRepository: getIt<LoginRepository>(),
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

  /// SignUp Cubit
  getIt.registerFactory<SignUpCubit>(
    () => SignUpCubit(
      signUpRepository: getIt<SignUpRepository>(),
    ),
  );
}
