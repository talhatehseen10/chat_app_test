import 'package:chat_test_app/constants/constants.dart';
import 'package:chat_test_app/extensions/context_extension.dart';
import 'package:chat_test_app/routes/app_routes.dart';
import 'package:chat_test_app/views/home/controllers/home_controller.dart';
import 'package:chat_test_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends GetView<HomeController> {
  static const String routeName = '/home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.scaffoldBackgroundColor,
        appBar: customAppBar(context, title: AppStrings.HOME),
        body: Column(
          children: [
            ListTile(
              onTap: () {
                Get.toNamed(AppRoutes.VOICE_ROOM);
              },
              title: Text("Voice Room"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: context.primaryColor,
              ),
            ),
            ListTile(
              onTap: () {
                Get.toNamed(AppRoutes.MODULE_LIST_SCREEN);
              },
              title: Text(AppStrings.MODULE),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: context.primaryColor,
              ),
            ),
            ListTile(
              title: Text("Voice Room"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: context.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
