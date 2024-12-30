import 'package:chat_test_app/views/task_3/controllers/text_to_speech_controller.dart';
import 'package:get/get.dart';

class TextToSpeechBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextToSpeechController());
  }
}
