import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/sign_up_request_model.dart';
import '../../data/repositories/sign_up_repository.dart';
import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepository _signUpRepository;

  SignUpCubit({required SignUpRepository signUpRepository})
      : _signUpRepository = signUpRepository,
        super(const SignUpState.initial());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isPasswordValidate = false;

  signUp() async {
    emit(const SignUpState.loading());
    final response = await _signUpRepository.signUp(
      signUpRequestBody: SignUpRequestModel(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (signUpResponse) {
        emit(SignUpState.success(signUpResponse));
      },
      failure: (error) {
        emit(SignUpState.error(message: error.apiErrorModel.message ?? ""));
      },
    );
  }

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    return super.close();
  }
}
