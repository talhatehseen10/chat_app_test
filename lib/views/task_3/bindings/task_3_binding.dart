import 'package:chat_test_app/views/task_3/controllers/task_3_controller.dart';
import 'package:get/get.dart';

class Task3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Task3Controller());
  }
}
