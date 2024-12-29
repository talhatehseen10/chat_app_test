import 'package:chat_test_app/constants/constants.dart';
import 'package:chat_test_app/extensions/context_extension.dart';
import 'package:chat_test_app/routes/app_routes.dart';
import 'package:chat_test_app/views/task_2/controllers/task_2_controller.dart';
import 'package:chat_test_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CakeListScreen extends GetView<Task2Controller> {
  static const String routeName = '/cake_list_screen';
  const CakeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: controller.selectedModule!.name),
      body: ListView.builder(
        itemCount: controller.selectedModule!.cakes.length,
        itemBuilder: (context, index) {
          final cake = controller.selectedModule!.cakes[index];

          return ListTile(
            title: Text(cake.type.toUpperCase()),
            subtitle: Text(cake.description ?? ''),
            onTap: () {
              controller.selectCake(cake);
            },
          );
        },
      ),
    );
  }
}
