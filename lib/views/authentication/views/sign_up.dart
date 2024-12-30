import 'package:chat_test_app/constants/constants.dart';
import 'package:chat_test_app/themes/themes.dart';
import 'package:chat_test_app/views/authentication/controllers/signup_controller.dart';
import 'package:chat_test_app/widgets/common_text_field.dart';
import 'package:chat_test_app/widgets/custom_app_bar.dart';
import 'package:chat_test_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends GetView<SignupController> {
  static const String routeName = '/sign_up';
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        appBar: customAppBar(context, title: AppStrings.SIGN_UP),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Sizes.PADDING_30, vertical: Sizes.PADDING_10),
            child: Form(
              key: controller.signupFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: controller.email,
                          keyboaredtype: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Required";
                            }
                            return null;
                          },
                          fillColor: Colors.white,
                          hintText: AppStrings.EMAIL,
                          suffixIcon: Icon(
                            Icons.email_outlined,
                            color: context.iconColor,
                            size: Sizes.ICON_SIZE_24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: Sizes.HEIGHT_10,
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        Obx(
                          () => CustomTextField(
                            height: Sizes.HEIGHT_66,
                            controller: controller.password,
                            isObscureText: controller.isObscureText.value,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Required";
                              }
                              return null;
                            },
                            fillColor: Colors.white,
                            hintText: AppStrings.PASSWORD_HINT_TEXT,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                // controller.isObscureText.value =
                                //     !controller.isObscureText.value;
                              },
                              child: Icon(
                                controller.isObscureText.value
                                    ? Icons.lock_outline
                                    : Icons.visibility_off,
                                size: Sizes.ICON_SIZE_24,
                                color: context.iconColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: Sizes.HEIGHT_10,
                  ),
                  Obx(
                    () => controller.isLoading.value
                        ? Center(
                            child: CircularProgressIndicator(
                              color: LightTheme.progressIndicatorColor,
                            ),
                          )
                        : CustomElevatedButton(
                            height: Sizes.HEIGHT_54,
                            width: double.infinity,
                            text: "SIGN UP",
                            onPressed: () {
                              if (controller.signupFormKey.currentState!
                                  .validate()) {
                                controller.userSignUp();
                              }
                            },
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
