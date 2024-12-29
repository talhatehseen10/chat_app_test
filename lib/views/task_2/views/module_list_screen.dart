import 'package:chat_test_app/constants/constants.dart';
import 'package:chat_test_app/views/task_2/controllers/task_2_controller.dart';
import 'package:chat_test_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ModuleListScreen extends GetView<Task2Controller> {
  static const String routeName = '/module_list_screen';
  const ModuleListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context, title: AppStrings.MODULE),
        body: Obx(
          () => controller.screenRefresh.value
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: controller.modules.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller.modules[index].name),
                      onTap: () {
                        controller.selectModule(controller.modules[index]);
                      },
                    );
                  },
                ),
        ));
  }
}
