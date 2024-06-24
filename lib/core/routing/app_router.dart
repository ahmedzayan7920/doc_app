import 'package:doc_app/features/home/ui/views/home_view.dart';
import 'package:doc_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doc_app/features/sign_up/ui/views/sign_up_view.dart';

import '../../features/on_boarding/ui/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/ui/views/login_view.dart';
import '../di/dependency_injection.dart';
import 'app_routes.dart';

abstract class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
        );
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          ),
        );
      case AppRoutes.signUp:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUpView(),
          ),
        );
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No Route defined for  ${settings.name}'),
            ),
          ),
        );
    }
  }
}
