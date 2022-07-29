import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/routs.dart';

abstract class SignUpController
    extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp
    extends SignUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController confirmPassword;
  late TextEditingController password;

  @override
  signUp() {}

  @override
  goToSignIn() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    confirmPassword = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    confirmPassword.dispose();
    password.dispose();
    super.dispose();
  }
}
