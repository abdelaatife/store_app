import 'package:flutter/material.dart';
import 'package:store/view/widget/auth/socialmedia.dart';

class AppAuthSocialMaeida extends StatelessWidget {
  const AppAuthSocialMaeida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center,
                      children: [
                        AppSocialMadiaSignIN(
                            imUrl:
                                "assets/images/facebook.png",
                            onTap: () {}),
                          const  SizedBox(width: 20),
                        AppSocialMadiaSignIN(
                            imUrl:
                                "assets/images/twitter.png",
                            onTap: () {}),
                            const  SizedBox(width: 20),
                        AppSocialMadiaSignIN(
                            imUrl:
                                "assets/images/google.png",
                            onTap: () {}),
                      ],
                    );
  }
}