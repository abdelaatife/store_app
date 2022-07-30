 import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:store/view/widget/auth/form/forgetpasswordform.dart';
 
import 'package:store/view/widget/auth/text/signintext.dart';
 
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     
    return  Scaffold(
        appBar: AppBar(
          title: Text(
            "forget_password".tr,
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
              horizontal: 30,  ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppSiginInText(
                  titel: "send_reset_code".tr,
                  text:
                      'enter_your_email_to_receive_a_reset_code'.tr,
                ),
                 Image.asset(
                 'assets/images/forgetpassword.png'
                ),
               const AppForgetPasswordForm(),
                 
               
                  
              ],
            ),
          ),
        ));
  }
}