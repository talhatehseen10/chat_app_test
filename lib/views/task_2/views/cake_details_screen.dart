import 'package:chat_test_app/constants/constants.dart';
import 'package:chat_test_app/views/task_2/controllers/task_2_controller.dart';
import 'package:chat_test_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CakeDetailScreen extends GetView<Task2Controller> {
  const CakeDetailScreen({
    super.key,
  });
  static const String routeName = '/cake_details_screen';

  @override
  Widget build(BuildContext context) {
    Widget content;

    switch (controller.selectedCake!.type) {
      case 'text':
        content = TextField(
          decoration:
              InputDecoration(hintText: controller.selectedCake!.content),
        );
        break;
      case 'image':
        content = Column(
          children: [
            Image.network(controller.selectedCake!.content),
            if (controller.selectedCake!.description != null)
              Text(controller.selectedCake!.description!),
          ],
        );
        break;
      case 'audio':
        content = Column(
          children: [
            Text(controller.selectedCake!.description ?? ''),
            // Add audio player/recorder widget
          ],
        );
        break;
      default:
        content = Text('Unknown task type');
    }

    return Scaffold(
      appBar: customAppBar(context, title: AppStrings.CAKE_DETAILS),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: content,
      ),
    );
  }
}
