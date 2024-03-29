import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/controller/auth/login_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widget/auth/authbutton.dart';
import 'package:store/view/widget/auth/form/customformfield.dart';
import 'package:store/view/widget/auth/text/foggetpassword.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller =
        Get.put(LoginControllerImp());
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
        AppCustomFormFaild(
          controller: controller.password,
          keyboardType:
              TextInputType.visiblePassword,
          obscureText: true,
          lable: 'Password'.tr,
          hint: 'Enter your Password'.tr,
          icon: Ionicons.lock_closed_outline,
        ),
        const AppForgetPasswordText(),
        AppCustomAuthButton(
          color: AppColor.primary,
          text: 'signin'.tr,
          onPressed: () {},
        ),
      ],
    ));
  }
}
