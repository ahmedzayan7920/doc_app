

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_form_field.dart';
import '../../logic/cubit/sign_up_cubit.dart';

class SignUpPasswordConfirmationField extends StatefulWidget {
  const SignUpPasswordConfirmationField({
    super.key,});

  @override
  State<SignUpPasswordConfirmationField> createState() => _SignUpPasswordConfirmationFieldState();
}

class _SignUpPasswordConfirmationFieldState extends State<SignUpPasswordConfirmationField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
      hint: "Password Confirmation",
      keyboardType: TextInputType.visiblePassword,
      controller: context.read<SignUpCubit>().passwordConfirmationController,
      validator: (value) {
        if (value == null || value.isEmpty || value != context.read<SignUpCubit>().passwordController.text) {
          return 'Please enter a valid password Confirmation';
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
