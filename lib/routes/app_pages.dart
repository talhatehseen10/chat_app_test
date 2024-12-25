import 'package:chat_test_app/routes/routes.dart';
import 'package:chat_test_app/views/authentication/bindings/login_binding.dart';
import 'package:chat_test_app/views/authentication/views/login.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const Login(),
      binding: LoginBinding(),
      transition: Transition.downToUp,
    ),
  ];
}
