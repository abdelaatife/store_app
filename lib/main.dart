import 'package:flutter/material.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/services/services.dart';
import 'package:store/localization/transilation.dart';
import 'package:store/root.dart';
import 'package:store/view/screens/language.dart';
import 'package:get/get.dart';
import 'package:store/view/widget/language/changelocal.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await Firebase.initializeApp(
    options:
        DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocaleController lancontroller =
        Get.put(LocaleController());
    return GetMaterialApp(
      translations: AppTranslations(),
      debugShowCheckedModeBanner: false,
      locale: lancontroller.language,
      theme: ThemeData(
        fontFamily: AppFont.primary,
        textTheme: const TextTheme(
          bodyText1: TextStyle(height: 2.3 , fontFamily: AppFont.primary),
          headline1: TextStyle(
              color: Colors.black, fontSize: 24),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const Language(),
      routes: routes,
    );
  }
}
