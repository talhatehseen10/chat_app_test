import 'dart:convert';

import 'package:chat_test_app/routes/app_routes.dart';
import 'package:chat_test_app/views/task_2/models/cakes.dart';
import 'package:chat_test_app/views/task_2/models/module.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Task2Controller extends GetxController {
  RxBool screenRefresh = false.obs;
  List<Module> _modules = [];
  List<Module> get modules => _modules;
  Module? selectedModule;
  Cake? selectedCake;

  @override
  void onInit() {
    loadModules();
    super.onInit();
  }

  Future<void> loadModules() async {
    screenRefresh.value = true;
    final String response =
        await rootBundle.loadString('assets/mock_data.json');
    final data = json.decode(response);
    _modules = (data['modules'] as List)
        .map((module) => Module.fromJson(module))
        .toList();
    screenRefresh.value = false;
  }

  void selectModule(Module module) {
    selectedModule = module;
    Get.toNamed(AppRoutes.CAKE_LIST_SCREEN);
  }

  void selectCake(Cake cake) {
    selectedCake = cake;
    Get.toNamed(AppRoutes.CAKE_DETAILS_SCREEN);
  }
}
