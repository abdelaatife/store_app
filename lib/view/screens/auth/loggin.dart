import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/auth/login_controller.dart';
import 'package:store/view/widget/auth/text/haveacount.dart';
import 'package:store/view/widget/auth/form/loginform.dart';
import 'package:store/view/widget/auth/text/signintext.dart';
import 'package:store/view/widget/auth/socialmediauth.dart';

class Login extends  StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller =
        Get.put(LoginControllerImp());
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
                const SizedBox(height: 25),
                const AppLoginForm(),
                const SizedBox(height: 50),
                const AppAuthSocialMaeida(),
                AppHaveAcountText(
                  text1:
                      "you_dont_have_an_account"
                          .tr,
                  text2: "signup".tr,
                  onTap: () {
                    controller.goToSignUp();
                  },
                )
              ],
            ),
          ),
        ));
  }
}
