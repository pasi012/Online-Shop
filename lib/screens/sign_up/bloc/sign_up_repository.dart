

import 'package:flutter/material.dart';
import 'package:bagisto_app_demo/screens/sign_up/utils/index.dart';

abstract class SignUpRepository {
  Future<SignInModel?> callSignUpApi(
    String email,
    String firstName,
    String lastName,
    String password,
    String confirmPassword,
  );
}

class SignUpRepositoryImp implements SignUpRepository {
  @override
  Future<SignInModel?> callSignUpApi(
    String email,
    String firstName,
    String lastName,
    String password,
    String confirmPassword,
  ) async {
    SignInModel? signUpResponseModel;

    try {
      signUpResponseModel = await ApiClient().getSignUpData(
        email,
        firstName,
        lastName,
        password,
        confirmPassword,
      );
    } catch (error, stacktrace) {
      debugPrint("Error --> $error");
      debugPrint("StackTrace --> $stacktrace");
    }
    return signUpResponseModel;
  }
}
