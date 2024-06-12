

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class LoginPasswordField extends StatefulWidget {
  
  final ValueNotifier<bool> isPasswordValidNotifier;
  const LoginPasswordField({
    super.key, required this.isPasswordValidNotifier,
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
      keyboardType: TextInputType.visiblePassword,
      controller: context.read<LoginCubit>().passwordController,
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
