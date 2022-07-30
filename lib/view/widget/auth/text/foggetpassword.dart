import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/routs.dart';

class AppForgetPasswordText
    extends StatelessWidget {
  const AppForgetPasswordText({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {
              Get.toNamed(
                  AppRoutes.forgetPassword);
            },
            child: Text("Forgot Password?".tr,
                style: ThemeData()
                    .textTheme
                    .bodyText1!
                    .copyWith(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.grey,
                    ))),
      ],
    );
  }
}
