import 'package:chat_test_app/preferences/preferences.dart';
import 'package:chat_test_app/views/authentication/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;
  String? showSwitchTile;
  User? user;
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
    emailController = TextEditingController();
    passwordController = TextEditingController();
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

  void addUserLoginData(Map<String, dynamic> data) async {
    isServerError.value = false;
    user = User.fromJson(data);
    Preferences().setIsLogin(true);
    Preferences().setUser(user!.toJson());
    Preferences().setUserToken(user!.accessToken!);
    isLoading.value = false;
  }

  void addUserLoginDataIfLogin() {
    user = User.fromJson(Preferences().getUser());
  }
}
