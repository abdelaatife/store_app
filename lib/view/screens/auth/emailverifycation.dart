import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:store/controller/auth/verifyamail_contoller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widget/auth/form/otpform.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyEmailControllerImp controller =
        Get.put(VerifyEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'verify_email'.tr,
          style: ThemeData()
              .textTheme
              .headline1!
              .copyWith(fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 30, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                  image: AssetImage(
                      'assets/images/email.png')),
              Text(
                'verification_code_has_been_sent_to_your_email_please_check_your_email_and_enter_the_code'
                    .tr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: AppFont.primary),
              ),
              const SizedBox(height: 25),
                AppOtpForm(
                  onBack: () {
                     controller.goToemail();
                  },
                  onSubmit: (verificationCode) => {
                   controller.check( verificationCode)
                  },
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
