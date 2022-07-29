import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:store/controller/onbording_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/data/datasource/static/static.dart';

class DoteSrolingOnbording
    extends StatelessWidget {
  const DoteSrolingOnbording({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: ((controller) => SizedBox(
              height: 20,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                          onBordingList.length,
                          ((index) =>
                              AnimatedContainer(
                                duration:
                                    const Duration(
                                        milliseconds:
                                            400),
                                width: controller
                                            .currentPage ==
                                        index
                                    ? 20
                                    : 8,
                                height: 8,
                                margin:
                                    const EdgeInsets
                                            .only(
                                        right: 5),
                                decoration:
                                    BoxDecoration(
                                  color: AppColor
                                      .primaryAccent,
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              6),
                                ),
                              )))
                    ],
                  ),
                ],
              ),
            )));
  }
}
