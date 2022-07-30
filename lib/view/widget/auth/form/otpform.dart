import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:store/controller/auth/fogetpassword_controller.dart';
import 'package:store/core/constant/color.dart';

class AppOtpForm extends StatelessWidget {
  final void Function(String) onSubmit;
  final void Function() onBack;
  const AppOtpForm(
      {Key? key,
      required this.onSubmit,
      required this.onBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());

    return Column(
      children: [
        OtpTextField(
          numberOfFields: 5,
          borderColor: AppColor.primary,

          showFieldAsBox: false,
          fieldWidth: 45,
          cursorColor: AppColor.primaryAccent,
          fillColor: AppColor.primary,

          onCodeChanged: (String code) {},

          onSubmit: (String verificationCode) {
            onSubmit(verificationCode);
          }, // end onSubmit
        ),
        const SizedBox(height: 25),
        Column(
          children: [
            Text(controller.email.text),
            Text("not your email?".tr,
                textAlign: TextAlign.center,
                style: ThemeData()
                    .textTheme
                    .bodyText1!
                    .copyWith(
                      fontSize: 16,
                    )),
            TextButton(
                onPressed: () {
                  onBack();
                },
                child: Text(
                  "Change Email".tr,
                ))
          ],
        ),
      ],
    );
  }
}
