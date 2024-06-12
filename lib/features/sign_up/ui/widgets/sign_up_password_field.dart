

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_form_field.dart';
import '../../logic/cubit/sign_up_cubit.dart';

class SignUpPasswordField extends StatefulWidget {
  final ValueNotifier<bool> isPasswordValidNotifier;
  const SignUpPasswordField({
    super.key, required this.isPasswordValidNotifier,
  });

  @override
  State<SignUpPasswordField> createState() => _SignUpPasswordFieldState();
}

class _SignUpPasswordFieldState extends State<SignUpPasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
      hint: "Password",
      keyboardType: TextInputType.visiblePassword,
      controller: context.read<SignUpCubit>().passwordController,
      validator: (value) {
        if (!widget.isPasswordValidNotifier.value) {
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
