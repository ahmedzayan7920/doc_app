import 'package:doc_app/features/on_boarding/ui/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

import '../../features/login/ui/views/login_view.dart';
import 'app_routes.dart';

abstract class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onBoarding:
        return MaterialPageRoute(builder: (context) => const OnBoardingView());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (context) => const LoginView());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No Route defined for  ${settings.name}')),
          ),
        );
    }
  }
}
