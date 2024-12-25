import 'package:chat_test_app/routes/app_pages.dart';
import 'package:chat_test_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      title: AppStrings.APP_NAME,
      themeMode: ThemeMode.light,
      initialRoute: AppRoutes.LOGIN,
      getPages: AppPages.pages,
      defaultTransition: Transition.cupertino,
      smartManagement: SmartManagement.full,
    );
  }
}
