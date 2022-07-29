import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/auth/signup_controller.dart';
import 'package:store/view/widget/auth/haveacount.dart';
import 'package:store/view/widget/auth/loginform.dart';
import 'package:store/view/widget/auth/signintext.dart';
import 'package:store/view/widget/auth/signupform.dart';
import 'package:store/view/widget/auth/socialmediauth.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     SignUpControllerImp controller =
        Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'signup'.tr,
            style: ThemeData()
                .textTheme
                .headline1!
                .copyWith(fontSize: 24),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 30, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppSiginInText(
                  titel:
                      "complete_your_profile".tr,
                  text:
                      "complete_your_profile_and_get_your_first_order"
                          .tr,
                ),
                const AppSignUpForm(),
                AppHaveAcountText(
                  text1:
                      "you_already_have_an_account"
                          .tr,
                  text2: "signin".tr,
                  onTap: () {
                   controller.goToSignIn();
                  
                  },
                )
              ],
            ),
          ),
        ));
  }
}
