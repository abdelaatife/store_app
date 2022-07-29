import 'package:flutter/material.dart';
import 'package:store/core/constant/routs.dart';
import 'package:store/view/screens/auth/loggin.dart';
import 'package:store/view/screens/auth/signup.dart';
import 'package:store/view/screens/onbording.dart';

Map<String, Widget Function(BuildContext)>
    routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onbording: (context) =>const Onbording(),
  AppRoutes.signup: (context) => const Signup(),
};
