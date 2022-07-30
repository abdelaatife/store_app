import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/controller/auth/fogetpassword_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widget/auth/authbutton.dart';
import 'package:store/view/widget/auth/form/customformfield.dart';
 
class AppForgetPasswordForm
    extends StatelessWidget {
  const AppForgetPasswordForm({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
     return Form(
        child: Column(
      children: [
     AppCustomFormFaild(
          controller: controller.email,
          keyboardType:
              TextInputType.emailAddress,
          lable: 'Email'.tr,
          hint: 'Enter your email'.tr,
          icon: Ionicons.mail_outline,
          obscureText: false,
        ),
        const SizedBox(height: 25),
        AppCustomAuthButton(
          color: AppColor.primary,
          text: 'Verify'.tr,
          onPressed: () {
            controller.goToverfiyCode();
          },
        ),
      ],
    ));
  }
}
