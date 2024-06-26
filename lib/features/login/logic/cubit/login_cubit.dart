import 'package:doc_app/core/helpers/app_shared_pref.dart';
import 'package:doc_app/core/helpers/app_shared_pref_keys.dart';
import 'package:doc_app/core/networking/dio_factory.dart';

import '../../data/models/login_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repositories/login_repository.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;

  LoginCubit({required LoginRepository loginRepository})
      : _loginRepository = loginRepository,
        super(const LoginState.initial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isPasswordValidate = false;

  login() async {
    emit(const LoginState.loading());
    final response = await _loginRepository.login(
      loginRequestBody: LoginRequestModel(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async{
        await saveUserToken(token: loginResponse.data.token??"");
        emit(LoginState.success(loginResponse));

      },
      failure: (error) {
        emit(LoginState.error(message: error.apiErrorModel.message ?? ""));
      },
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
  
  saveUserToken({required String token}) async{
    await AppSharedPref.setSecuredString(AppSharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
