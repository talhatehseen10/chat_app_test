import 'package:chat_test_app/routes/app_routes.dart';
import 'package:chat_test_app/views/task_3/controllers/task_3_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VoiceAssistantScreen extends GetView<Task3Controller> {
  static const String routeName = '/voice_assistant_screen';
  const VoiceAssistantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Voice Assistant')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.toNamed(AppRoutes.SPEECH_TO_TEXT_SCREEN);
            },
            child: Text('Speech-to-Text'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(AppRoutes.TEXT_TO_SPEECH_SCREEN);
            },
            child: Text('Text-to-Speech'),
          ),
        ],
      ),
    );
  }
}
