import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widget/auth/authbutton.dart';
import 'package:store/view/widget/auth/customformfield.dart';
import 'package:store/view/widget/auth/foggetpassword.dart';
import 'package:store/view/widget/auth/signintext.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'signin'.tr,
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
              horizontal: 30, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppSiginInText(
                  titel: "welcome_back".tr,
                  text:
                      "signin_with_email_and_password_or_continue_with_social_media_accounts"
                          .tr,
                ),
                const SizedBox(height: 35),
                Form(
                    child: Column(
                  children: [
                    AppCustomFormFaild(
                      keyboardType: TextInputType
                          .emailAddress,
                      lable: 'Email'.tr,
                      hint: 'Enter your email'.tr,
                      icon: Ionicons.mail_outline,
                      obscureText: false,
                    ),
                    AppCustomFormFaild(
                      keyboardType: TextInputType
                          .visiblePassword,
                      obscureText: true,
                      lable: 'Password'.tr,
                      hint: 'Enter your Password'
                          .tr,
                      icon: Ionicons
                          .lock_closed_outline,
                    ),
                    const AppForgetPasswordText(),
                    AppCustomAuthButton(
                      color: AppColor.primary,
                      text: 'signin'.tr,
                      onPressed: () {},
                    )
                  ],
                ))
              ],
            ),
          ),
        ));
  }
}
