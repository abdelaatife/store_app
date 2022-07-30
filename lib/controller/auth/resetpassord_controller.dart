import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/routs.dart';

abstract class ResetPasswordController
    extends GetxController {
  check();
  goToSuccessPasswordChanget();
}

class ResetPasswordControllerImp
    extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController confirmPassword;

  @override
  check() {
    if (password.value.text == confirmPassword.value.text) {
      goToSuccessPasswordChanget();
    } else {
      Get.snackbar(
        "Error",
        "Password and Confirm Password not match",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2),
      );
    }
  }

  @override
  goToSuccessPasswordChanget() {
    Get.offNamed(AppRoutes.successPasswordChange);
  }

  @override
  void onInit() {
    password = TextEditingController();
    confirmPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
}
