import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/routs.dart';

abstract class ForgetPasswordController  
    extends GetxController {
  check();
  goToverfiyCode();
}

class ForgetPasswordControllerImp
    extends ForgetPasswordController{
   late TextEditingController email;
   

  @override
  check() {}

  @override
  goToverfiyCode() {
    Get.offNamed(AppRoutes.verifyCode);
  }

  @override
  void onInit() {
     email = TextEditingController();
     super.onInit();
  }

  @override
  void dispose() {
     email.dispose();
     super.dispose();
  }
}
