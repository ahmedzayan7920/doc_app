import 'package:doc_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_routes.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: AppRoutes.onBoarding,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}