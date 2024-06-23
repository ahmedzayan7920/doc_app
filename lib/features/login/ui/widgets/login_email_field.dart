import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/custom_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class LoginEmailField extends StatelessWidget {
  const LoginEmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
      hint: "Email",
      keyboardType: TextInputType.emailAddress,
      controller: context.read<LoginCubit>().emailController,
      validator: (value) {
        if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
          return 'Please enter a valid email';
        }
        return null;
      },
    );
  }
}
