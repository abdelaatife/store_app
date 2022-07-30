import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widget/auth/authbutton.dart';

class SuccessPasswordChanget extends StatelessWidget {
  const SuccessPasswordChanget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            const Image(
                image: AssetImage(
                    'assets/images/My password-pana.png')),
            Text(
              'password_changed_successfully'.tr,
              textAlign: TextAlign.center,
              style: const  TextStyle(
                  fontFamily: AppFont.primary),
            ),
            const SizedBox(height: 25),
              AppCustomAuthButton(
              color: AppColor.primary,
              text: "go_to_home".tr,
              onPressed: () {
                Get.offAllNamed('/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}