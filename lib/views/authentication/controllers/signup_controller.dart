import 'package:chat_test_app/routes/app_routes.dart';
import 'package:chat_test_app/views/authentication/models/signup/country.dart';
import 'package:chat_test_app/views/authentication/models/signup/region.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isServerError = false.obs;

  late TextEditingController username;
  late TextEditingController password;
  String? selectedRegion;
  RxBool regionRefresh = true.obs;
  String? selectedCountry;
  RxBool countryRefresh = true.obs;
  List<Region>? regionsList;
  List<Country>? countriesList;
  late GlobalKey<FormState> signupFormKey;

  @override
  void onInit() {
    signupFormKey = GlobalKey<FormState>();
    username = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    username.dispose();
    super.dispose();
  }
}
