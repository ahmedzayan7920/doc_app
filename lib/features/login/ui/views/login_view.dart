import 'package:doc_app/core/helpers/spaces.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/core/widgets/custom_button.dart';
import 'package:doc_app/core/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  bool obscureText = true;
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back",
                          style: AppTextStyles.boldPrimary24,
                        ),
                      ],
                    ),
                    const VerticalSpace(8),
                    Text(
                      "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                      style: AppTextStyles.regularGrey14,
                    ),
                    const VerticalSpace(36),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          const CustomFormField(hint: "Email"),
                          const VerticalSpace(16),
                          CustomFormField(
                            hint: "Password",
                            obscureText: obscureText,
                            suffixIcon: IconButton(
                              onPressed: () {
                                obscureText = !obscureText;
                                setState(() {});
                              },
                              icon: Icon(
                                obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                          const VerticalSpace(16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                    value: rememberMe,
                                    onChanged: (value) {
                                      rememberMe = value ?? false;
                                      setState(() {});
                                    },
                                  ),
                                  Text("Remember me",
                                      style: AppTextStyles.regularGrey12),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text("Forgot Password?"),
                              ),
                            ],
                          ),
                          const VerticalSpace(32),
                          CustomButton(
                            onPressed: () {},
                            text: "Login",
                          ),
                          const VerticalSpace(16),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "By logging in you agree to our  ",
                                  style: AppTextStyles.regularGrey14,
                                ),
                                TextSpan(
                                  text: "Terms & Conditions ",
                                  style: AppTextStyles.mediumDarkBlue14,
                                ),
                                TextSpan(
                                  text: "and ",
                                  style: AppTextStyles.regularGrey14,
                                ),
                                TextSpan(
                                  text: "Privacy Policy.",
                                  style: AppTextStyles.mediumDarkBlue14,
                                ),
                              ],
                            ),
                          ),
                          const VerticalSpace(40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: AppTextStyles.regularGrey14,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text("Sign Up"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
