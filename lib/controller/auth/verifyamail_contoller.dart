import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/routs.dart';

abstract class VerifyEmailController
    extends GetxController {
  check(code);
  goToHome();
  goToemail();
}

class VerifyEmailControllerImp
    extends VerifyEmailController {
  late TextEditingController code;

  @override
  check(code) {
    if (code == "44444") {
      goToHome();
    } else {
      Get.snackbar(
        "Error".tr,
        "Code not match".tr,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 4),
      );
    }
  }

  @override
  goToHome() {
    Get.offNamed(AppRoutes.home);
  }

  @override
  void onInit() {
    code = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    code.dispose();
    super.dispose();
  }

  @override
  goToemail() {
    Get.toNamed(AppRoutes.signup);
  }
}
