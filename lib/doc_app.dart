
import 'core/helpers/app_shared_pref.dart';
import 'core/helpers/app_shared_pref_keys.dart';
import 'core/routing/app_router.dart';
import 'core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_routes.dart';

class DocApp extends StatefulWidget {
  const DocApp({super.key});

  @override
  State<DocApp> createState() => _DocAppState();
}

class _DocAppState extends State<DocApp> {
  bool isLoggedIn = false;

  @override
  void initState() {
     checkLoggedState();
    super.initState();
  }
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
          initialRoute: isLoggedIn ? AppRoutes.home : AppRoutes.login,
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
  
  checkLoggedState() async{
    String? result = await AppSharedPref.getSecuredString(AppSharedPrefKeys.userToken);
    if (result != null && result.isNotEmpty) {
        isLoggedIn = true;
    }else{
      isLoggedIn = false;
    }
  }
}
