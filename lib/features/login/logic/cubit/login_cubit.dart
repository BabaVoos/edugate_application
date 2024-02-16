import 'package:edugate_applocation/core/networking/cache_helper.dart';
import 'package:edugate_applocation/features/login/data/models/login_request_body.dart';
import 'package:edugate_applocation/features/login/data/repos/login_repo.dart';
import 'package:edugate_applocation/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  // putting text controllers here for easy access and for reducing loads on UI
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
          email: emailController.text, password: passwordController.text),
    );

    response.when(
      success: (loginResponse) async {
        CacheHelper.saveData(key: 'USER_DATA', value: [
          loginResponse.userName ?? 'UserName Not Found',
          loginResponse.email ?? 'Email Not Found',
          loginResponse.phoneNumber ?? 'Phone Number Not Found',
          loginResponse.token ?? 'Token Not Found',
          loginResponse.displayName ?? 'Display Name Not Found',
        ]).then((value) {
          emit(
            LoginState.success(loginResponse),
          );
        });
      },
      failure: (error) => emit(
        LoginState.error(message: error.apiErrorModel.errorMessage ?? ''),
      ),
    );
  }
}
