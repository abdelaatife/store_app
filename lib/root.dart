import 'package:flutter/material.dart';
import 'package:store/core/constant/routs.dart';
import 'package:store/view/screens/auth/emailverifycation.dart';
import 'package:store/view/screens/auth/forgetpassword/forgetpasswordpage.dart';
import 'package:store/view/screens/auth/loggin.dart';
import 'package:store/view/screens/auth/forgetpassword/resetpassword.dart';
import 'package:store/view/screens/auth/signup.dart';
import 'package:store/view/screens/auth/forgetpassword/successpassowrdchange.dart';
import 'package:store/view/screens/auth/forgetpassword/verifycode.dart';
import 'package:store/view/screens/home.dart';
import 'package:store/view/screens/onbording.dart';

Map<String, Widget Function(BuildContext)>
    routes = {
  //onboarding
  AppRoutes.onbording: (context) =>
      const Onbording(),
//auth
  AppRoutes.login: (context) => const Login(),
  AppRoutes.signup: (context) => const Signup(),
  AppRoutes.forgetPassword: (context) => const ForgetPassword(),
  AppRoutes.verifyCode: (context) => const VerifyCode(),
  AppRoutes.resetPassword: (context) => const ResetPassword(),
  AppRoutes.successPasswordChange: (context) => const SuccessPasswordChanget(),
  AppRoutes.emailVerify: (context) => const VerifyEmail(),
  //home
  AppRoutes.home: (context) => const Home(),
};
