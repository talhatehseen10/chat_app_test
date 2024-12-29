import 'package:chat_test_app/views/task_2/controllers/task_2_controller.dart';
import 'package:get/get.dart';

class Task2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Task2Controller());
  }
}
