import 'package:doc_app/core/helpers/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/do_not_have_account.dart';
import '../widgets/login_bloc_listener.dart';
import '../widgets/login_form.dart';
import '../widgets/login_header.dart';
import '../widgets/login_terms_and_conditions.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: const Column(
              children: [
                LoginBlocListener(),
                LoginHeader(),
                VerticalSpace(36),
                LoginForm(),
                VerticalSpace(16),
                LoginTermsAndConditions(),
                VerticalSpace(40),
                DoNotHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
