import 'package:chat_test_app/views/task_3/controllers/text_to_speech_controller.dart';
import 'package:chat_test_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/constants.dart';

class TextToSpeechScreen extends GetView<TextToSpeechController> {
  const TextToSpeechScreen({super.key});
  static const String routeName = '/text_to_speech_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text-to-Speech')),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.PADDING_16),
        child: Column(
          children: [
            SizedBox(
              height: Sizes.HEIGHT_50,
              width: Sizes.WIDTH_250,
              child: TextField(
                controller: controller.textToSpeak,
                decoration: InputDecoration(labelText: 'Enter text to speak'),
              ),
            ),
            const SizedBox(height: Sizes.HEIGHT_20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomElevatedButton(
                  width: Sizes.WIDTH_100,
                  text: "Play",
                  leadingWidget: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    controller.speak();
                  },
                ),
                CustomElevatedButton(
                  width: Sizes.WIDTH_100,
                  text: "Stop",
                  leadingWidget: Icon(
                    Icons.stop,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    controller.stop();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
