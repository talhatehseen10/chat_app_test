import 'package:chat_test_app/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;
  String? showSwitchTile;
  late GlobalKey<FormState> formKey;
  RxBool isObscureText = true.obs;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController emailForgotController;
  RxBool isServerError = false.obs;
  RxBool isEmailFound = false.obs;

  @override
  void onInit() {
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController(text: "talha@gmail.com");
    passwordController = TextEditingController(text: "1234567");
    emailForgotController = TextEditingController();
    // emailController = TextEditingController();
    // passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailForgotController.dispose();
    super.dispose();
  }

  void userLogin() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim())
        .then((e) {
      Get.offAndToNamed(AppRoutes.HOME);
    }, onError: (e) {
      Get.snackbar("Invalid", e.toString());
    });
  }

  void addUserLoginData(Map<String, dynamic> data) async {
    isServerError.value = false;
    // Preferences().setIsLogin(true);
    // Preferences().setUser(user!.toJson());
    // Preferences().setUserToken(user!.accessToken!);
    isLoading.value = false;
  }

  void addUserLoginDataIfLogin() {
    //user = User.fromJson(Preferences().getUser());
  }
}
