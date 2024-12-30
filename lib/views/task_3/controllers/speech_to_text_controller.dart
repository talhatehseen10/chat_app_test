import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class SpeechToTextController extends GetxController {
  late stt.SpeechToText speech;
  RxBool isListening = false.obs;

  String transcription = "Press the mic to start speaking";
  RxBool screenRefresh = false.obs;

  @override
  void onInit() {
    speech = stt.SpeechToText();
    super.onInit();
  }

  void startListening() async {
    bool available = await speech.initialize(
      onStatus: (status) {
        print('Status: $status');
      },
      onError: (error) => print('Error: $error'),
    );
    if (available) {
      isListening.value = true;
      speech.listen(
        onResult: (result) {
          screenRefresh.value = true;
          transcription = result.recognizedWords;
          screenRefresh.value = false;
        },
      );
    } else {
      isListening.value = false;
      print('Speech recognition not available');
    }
  }

  void stopListening() {
    speech.stop();
    isListening.value = false;
  }
}
