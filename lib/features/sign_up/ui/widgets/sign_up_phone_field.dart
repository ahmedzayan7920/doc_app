import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/custom_form_field.dart';
import '../../logic/cubit/sign_up_cubit.dart';

class SignUpPhoneField extends StatelessWidget {
  const SignUpPhoneField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
      hint: "Phone",
      keyboardType: TextInputType.phone,
      controller: context.read<SignUpCubit>().phoneController,
      validator: (value) {
        if (value == null || value.isEmpty || !AppRegex.isPhoneValid(value)) {
          return 'Please enter a valid Phone';
        }
        return null;
      },
    );
  }
}
