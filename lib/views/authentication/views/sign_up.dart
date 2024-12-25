import 'package:chat_test_app/constants/constants.dart';
import 'package:chat_test_app/views/authentication/controllers/signup_controller.dart';
import 'package:chat_test_app/widgets/custom_app_bar.dart';
import 'package:chat_test_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends GetView<SignupController> {
  static const String routeName = '/sign_up';
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: customAppBar(context),
      bottomNavigationBar: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
            left: Sizes.MARGIN_30,
            right: Sizes.MARGIN_30,
            bottom: Sizes.MARGIN_60),
        child: CustomElevatedButton(
          height: Sizes.HEIGHT_54,
          text: "SIGN UP",
          onPressed: () {
            if (controller.signupFormKey.currentState!.validate()) {}
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Sizes.PADDING_30, vertical: Sizes.PADDING_10),
            child: Form(
              key: controller.signupFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
