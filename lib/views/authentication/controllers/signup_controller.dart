import 'package:chat_test_app/views/authentication/models/signup/country.dart';
import 'package:chat_test_app/views/authentication/models/signup/region.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isServerError = false.obs;
  RxBool isObscureText = true.obs;

  late TextEditingController email;
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
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    email.dispose();
    super.dispose();
  }

  Future<void> userSignUp() async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: email.text, password: password.text)
        .then((val) {
      FirebaseFirestore.instance
          .collection("users")
          .doc(val.user!.uid)
          .set({"email": email.text, "typing": false, "recording": false}).then(
              (val) {
        Get.snackbar("Successfully", "User successfully registered");
      });
    });
  }
}
