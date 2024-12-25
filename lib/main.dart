import 'package:chat_test_app/routes/app_pages.dart';
import 'package:chat_test_app/routes/app_routes.dart';
import 'package:chat_test_app/themes/controller/theme_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'constants/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initialization();
  runApp(
    const MyApp(),
  );
}

Future initialization() async {
  await GetStorage.init(AppStrings.THEME_BOX_KEY);
  await GetStorage.init().then((value) async {
    Get.lazyPut(() => ThemeController(), fenix: true);
  });
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
