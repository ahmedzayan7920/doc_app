import '../../../../core/widgets/password_validator.dart';
import '../../logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/widgets/custom_button.dart';
import 'login_email_field.dart';
import 'login_password_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final isPasswordValidNotifier = ValueNotifier<bool>(false);

  @override
  void dispose() {
    isPasswordValidNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const LoginEmailField(),
          const VerticalSpace(16),
          LoginPasswordField(
            isPasswordValidNotifier: isPasswordValidNotifier,
          ),
          const VerticalSpace(16),
          PasswordValidator(
            passwordController: context.read<LoginCubit>().passwordController,
            isPasswordValidNotifier: isPasswordValidNotifier,
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Forgot Password?"),
          ),
          CustomButton(
            onPressed: () {
              validateThenLogin(context: context);
            },
            text: "Login",
          ),
        ],
      ),
    );
  }

  void validateThenLogin({required BuildContext context}) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login();
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
