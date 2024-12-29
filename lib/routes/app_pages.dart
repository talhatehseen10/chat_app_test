import 'package:chat_test_app/routes/routes.dart';
import 'package:chat_test_app/views/authentication/bindings/login_binding.dart';
import 'package:chat_test_app/views/authentication/bindings/signup_binding.dart';
import 'package:chat_test_app/views/authentication/views/login.dart';
import 'package:chat_test_app/views/authentication/views/sign_up.dart';
import 'package:chat_test_app/views/home/bindings/home_binding.dart';
import 'package:chat_test_app/views/home/views/home.dart';
import 'package:chat_test_app/views/task_2/bindings/task_2_binding.dart';
import 'package:chat_test_app/views/task_2/views/cake_details_screen.dart';
import 'package:chat_test_app/views/task_2/views/cake_list_screen.dart';
import 'package:chat_test_app/views/task_2/views/module_list_screen.dart';
import 'package:chat_test_app/views/voice_room/bindings/voice_room_binding.dart';
import 'package:chat_test_app/views/voice_room/views/voice_room_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const Login(),
      binding: LoginBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: AppRoutes.SIGNUP,
      page: () => const SignUp(),
      binding: SignupBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const Home(),
      binding: HomeBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: AppRoutes.VOICE_ROOM,
      page: () => const VoiceRoomScreen(),
      binding: VoiceRoomBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: AppRoutes.MODULE_LIST_SCREEN,
      page: () => const ModuleListScreen(),
      binding: Task2Binding(),
    ),
    GetPage(
      name: AppRoutes.CAKE_LIST_SCREEN,
      page: () => const CakeListScreen(),
    ),
    GetPage(
      name: AppRoutes.CAKE_DETAILS_SCREEN,
      page: () => const CakeDetailScreen(),
    ),
  ];
}
