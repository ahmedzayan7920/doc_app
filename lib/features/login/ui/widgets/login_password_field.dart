

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class LoginPasswordField extends StatefulWidget {
  const LoginPasswordField({
    super.key,
  });

  @override
  State<LoginPasswordField> createState() => _LoginPasswordFieldState();
}

class _LoginPasswordFieldState extends State<LoginPasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
      hint: "Password",
      controller: context.read<LoginCubit>().passwordController,
      validator: (value) {
        if (!context.read<LoginCubit>().isPasswordValidate) {
          return 'Please enter a valid password';
        }
        return null;
      },
      obscureText: obscureText,
      suffixIcon: IconButton(
        onPressed: () {
          obscureText = !obscureText;
          setState(() {});
        },
        icon: Icon(
          obscureText ? Icons.visibility_off : Icons.visibility,
        ),
      ),
    );
  }
}
