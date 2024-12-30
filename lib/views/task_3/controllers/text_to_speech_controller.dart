import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class TextToSpeechController extends GetxController {
  FlutterTts flutterTts = FlutterTts();
  TextEditingController textToSpeak = TextEditingController();
  bool isPlaying = false;

  Future<void> speak() async {
    if (textToSpeak.text.isNotEmpty) {
      await flutterTts.speak(textToSpeak.text);
      isPlaying = true;
    }
  }

  Future<void> stop() async {
    await flutterTts.stop();
    isPlaying = false;
  }
}
