import 'package:doc_app/core/helpers/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/already_have_account.dart';
import '../widgets/sign_up_bloc_listener.dart';
import '../widgets/sign_up_form.dart';
import '../widgets/sign_up_header.dart';
import '../widgets/sign_up_terms_and_conditions.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: const Column(
              children: [
                SignUpHeader(),
                VerticalSpace(36),
                SignUpForm(),
                VerticalSpace(16),
                SignUpTermsAndConditions(),
                VerticalSpace(40),
                AlreadyHaveAccount(),
                SignUpBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
