import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
 import 'package:store/controller/auth/resetpassord_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widget/auth/authbutton.dart';
import 'package:store/view/widget/auth/form/customformfield.dart';
 
class AppResetPassowrdForm extends StatelessWidget {
  const AppResetPassowrdForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  ResetPasswordControllerImp controller = Get.put
      (ResetPasswordControllerImp());
    return Form(
        child: Column(
      children: [
       
        AppCustomFormFaild(
          controller: controller.password,
          keyboardType:
              TextInputType.visiblePassword,
          obscureText: true,
          lable: 'Password'.tr,
          hint: 'Enter your Password'.tr,
          icon: Ionicons.lock_closed_outline,
        ),
         AppCustomFormFaild(
          controller: controller.confirmPassword,
          keyboardType:
              TextInputType.visiblePassword,
          obscureText: true,
          lable: "Confirm Password".tr,
          hint: "Confirm your Password".tr,
          icon: Ionicons.lock_closed_outline,
        ),
      const SizedBox(height: 20),
         AppCustomAuthButton(
          color: AppColor.primary,
          text: "Confirm Password".tr,
          onPressed: () {
            controller.check();
          
          },
        ),
      ],
    ));
  }
}