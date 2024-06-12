import 'package:doc_app/features/sign_up/ui/widgets/sign_up_name_field.dart';
import 'package:doc_app/features/sign_up/ui/widgets/sign_up_password_confirmation_field.dart';
import 'package:doc_app/features/sign_up/ui/widgets/sign_up_phone_field.dart';

import '../../logic/cubit/sign_up_cubit.dart';
import '../../../../core/widgets/password_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/widgets/custom_button.dart';
import 'sign_up_email_field.dart';
import 'sign_up_password_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
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
      key: context.read<SignUpCubit>().formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SignUpNameField(),
          const VerticalSpace(16),
          const SignUpPhoneField(
            
          ),
          const VerticalSpace(16),
          const SignUpEmailField(),
          const VerticalSpace(16),
          SignUpPasswordField(
            isPasswordValidNotifier: isPasswordValidNotifier,
          ),
          const VerticalSpace(16),
          const SignUpPasswordConfirmationField(
          ),
          const VerticalSpace(16),
          PasswordValidator(
            passwordController: context.read<SignUpCubit>().passwordController,
            isPasswordValidNotifier: isPasswordValidNotifier,
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Forgot Password?"),
          ),
          CustomButton(
            onPressed: () {
              validateThenSignUp(context: context);
            },
            text: "SignUp",
          ),
        ],
      ),
    );
  }

  void validateThenSignUp({required BuildContext context}) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().signUp();
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
