import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class Task3Controller extends GetxController {
  RxBool screenRefresh = false.obs;

  late stt.SpeechToText speech;
  bool isListening = false;

  String transcription = "Press the mic to start speaking";
}
