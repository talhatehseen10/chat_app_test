import 'package:chat_test_app/constants/constants.dart';
import 'package:chat_test_app/extensions/context_extension.dart';
import 'package:chat_test_app/views/authentication/controllers/auth_controller.dart';
import 'package:chat_test_app/widgets/common_text_field.dart';
import 'package:chat_test_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends GetView<AuthController> {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          SizedBox(
            child: Column(
              children: [
                CustomTextField(
                  controller: controller.emailController,
                  keyboaredtype: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Required";
                    }
                    return null;
                  },
                  fillColor: Colors.white,
                  hintText: AppStrings.EMAIL_HINT_TEXT,
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
                    controller: controller.passwordController,
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
                      color: context.primaryColor,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                          height: Sizes.HEIGHT_54,
                          fontColor: AppColors.white,
                          onPressed: () async {
                            //controller.tempLogin();

                            if (controller.formKey.currentState!.validate()) {}
                          },
                          text: AppStrings.LOG_IN,
                        ),
                      ),
                    ],
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Sizes.PADDING_24),
            child: GestureDetector(
              onTap: () {
                // Get.toNamed(AppRoutes.FORGOT_PASSWORD);
              },
              child: Text(
                AppStrings.FORGOT_PASSWORD,
                style: context.bodySmall.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          Obx(
            () => controller.isServerError.value
                ? Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: Sizes.PADDING_24),
                    child: Text(
                      "Invalid Credentials",
                      style: context.bodySmall.copyWith(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
