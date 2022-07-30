import 'package:flutter/material.dart';
import 'package:get/get.dart';
  import 'package:store/view/widget/auth/form/resetpasswordform.dart'; 
import 'package:store/view/widget/auth/text/signintext.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'forget_password'.tr,
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
                  titel:  "Reset Password".tr,
                  text:
                      'Enter your new password'.tr, 
                ),
                const SizedBox(height: 25),
              const AppResetPassowrdForm(),
                 
                
              ],
            ),
          ),
        ));
  }
}