
import 'core/routing/app_router.dart';
import 'core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_routes.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: AppColors.primary,
            scaffoldBackgroundColor: AppColors.background,
            checkboxTheme: const CheckboxThemeData(
              side: BorderSide(
                color: AppColors.grey,
                width: 2,
              ),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.primary,
              ),
            ),
          ),
          initialRoute: AppRoutes.home,
          onGenerateRoute: AppRouter.onGenerateRoute,
        ),
      );
      // if (Platform.isWindows) {
      //   return ScreenUtilInit(
      //     designSize: const Size(1920, 1080),
      //     minTextAdapt: true,
      //     child: MaterialApp(
      //       debugShowCheckedModeBanner: false,
      //       theme: ThemeData(
      //         primaryColor: AppColors.primary,
      //         scaffoldBackgroundColor: AppColors.background,
      //       ),
      //       initialRoute: AppRoutes.onBoarding,
      //       onGenerateRoute: AppRouter.onGenerateRoute,
      //     ),
      //   );
      // } else {
      //   return ScreenUtilInit(
      //     designSize: const Size(375, 812),
      //     minTextAdapt: true,
      //     child: MaterialApp(
      //       debugShowCheckedModeBanner: false,
      //       theme: ThemeData(
      //         primaryColor: AppColors.primary,
      //         scaffoldBackgroundColor: AppColors.background,
      //       ),
      //       initialRoute: AppRoutes.onBoarding,
      //       onGenerateRoute: AppRouter.onGenerateRoute,
      //     ),
      //   );
      // }
    });
  }
}
