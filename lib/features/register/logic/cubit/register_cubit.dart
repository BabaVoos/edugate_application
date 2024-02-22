import 'package:edugate_applocation/features/register/data/repos/register_repo.dart';
import 'package:edugate_applocation/features/register/logic/cubit/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/register_request_body.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  // putting text controllers here for easy access and for reducing loads on UI
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitRegisterStates() async {
    emit(const RegisterState.registerLoading());
    final response = await _registerRepo.register(
      RegisterRequestBody(
        displayName: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        phoneNumber: phoneNumberController.text,
      ),
    );

    response.when(
      success: (registerResponse) => emit(RegisterState.registerSuccess(registerResponse)),
      failure: (error) => emit(
        RegisterState.registerError(
          message: error.apiErrorModel.errors![0],
        ),
      ),
    );
  }
}
