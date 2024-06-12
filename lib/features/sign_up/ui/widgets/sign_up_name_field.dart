import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/custom_form_field.dart';
import '../../logic/cubit/sign_up_cubit.dart';

class SignUpNameField extends StatelessWidget {
  const SignUpNameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
      hint: "Name",
      keyboardType: TextInputType.name,
      controller: context.read<SignUpCubit>().nameController,
      validator: (value) {
        if (value == null || value.isEmpty || !AppRegex.isNameValid(value)) {
          return 'Please enter a valid name';
        }
        return null;
      },
    );
  }
}
