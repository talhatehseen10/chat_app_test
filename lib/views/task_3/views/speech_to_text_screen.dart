import 'package:chat_test_app/views/task_3/controllers/speech_to_text_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/constants.dart';

class SpeechToTextScreen extends GetView<SpeechToTextController> {
  const SpeechToTextScreen({super.key});
  static const String routeName = '/speech_to_text_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Speech-to-Text')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Obx(
              () => controller.screenRefresh.value
                  ? SizedBox()
                  : Text(
                      controller.transcription,
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
            ),
            const SizedBox(height: Sizes.HEIGHT_20),
            Obx(
              () => FloatingActionButton(
                onPressed: controller.isListening.value
                    ? controller.stopListening
                    : controller.startListening,
                child: Icon(
                    controller.isListening.value ? Icons.mic_off : Icons.mic),
              ),
            )
          ],
        ),
      ),
    );
  }
}
