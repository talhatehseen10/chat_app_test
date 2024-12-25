import 'package:chat_test_app/constants/constants.dart';
import 'package:chat_test_app/extensions/context_extension.dart';
import 'package:chat_test_app/views/authentication/components/login_form.dart';
import 'package:chat_test_app/views/authentication/controllers/auth_controller.dart';
import 'package:chat_test_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends GetView<AuthController> {
  static const String routeName = '/login';
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      bottomNavigationBar: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
            left: Sizes.MARGIN_30,
            right: Sizes.MARGIN_30,
            bottom: Sizes.MARGIN_60),
        child: CustomElevatedButton(
          height: Sizes.HEIGHT_54,
          text: "NEW HERE? SIGN UP",
          backgoundColor: AppColors.black,
          onPressed: () {
            //  Get.toNamed(AppRoutes.SIGNUP);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: Sizes.HEIGHT_60,
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    size: Sizes.ICON_SIZE_18,
                    weight: Sizes.WIDTH_100,
                  ),
                ),
                const SizedBox(
                  height: Sizes.HEIGHT_54,
                ),
                Container(
                  height: Sizes.HEIGHT_36,
                  width: Sizes.WIDTH_140,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/BPRO.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: Sizes.HEIGHT_90,
                ),
                Text(
                  AppStrings.PLEASE_ENTER_LOGIN_CREDENTIALS,
                  style: context.bodySmall.copyWith(
                      fontSize: Sizes.TEXT_SIZE_12,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: Sizes.HEIGHT_24,
                ),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
