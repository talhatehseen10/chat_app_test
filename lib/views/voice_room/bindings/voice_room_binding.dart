import 'package:chat_test_app/views/voice_room/controllers/voice_room_controller.dart';
import 'package:get/get.dart';

class VoiceRoomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VoiceRoomController());
  }
}
