import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/onbording_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/routs.dart';

class CustomButtonOnbording
    extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnbording({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 290,
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius:
                  BorderRadius.circular(15),
            ),
            margin:
                const EdgeInsets.only(top: 10),
            child: MaterialButton(
              onPressed: () {
                controller.next();
              },
              height: 50,
              child: Text(
                "btn_continue".tr,
                style: const TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10),
            child: MaterialButton(
              onPressed: () {
                Get.offNamed(AppRoutes.login);
              },
              child: Text(
                "btn_skip".tr,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
