import 'package:flutter/material.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/services/services.dart';
import 'package:store/localization/transilation.dart';
import 'package:store/root.dart';
import 'package:store/view/screens/auth/language.dart';
 import 'package:get/get.dart';
import 'package:store/view/widget/language/changelocal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController lancontroller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: AppTranslations(),
      debugShowCheckedModeBanner: false,
      locale: lancontroller.language,
      theme: ThemeData(
        fontFamily: AppFont.primary,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
               
              height: 2.3),
          headline1: TextStyle( 
              
              color: Colors.black,
              fontSize: 24),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const Language(),
      routes: routes,
    );
  }
}
