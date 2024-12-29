// ignore_for_file: constant_identifier_names
import 'package:chat_test_app/views/authentication/views/login.dart';
import 'package:chat_test_app/views/authentication/views/sign_up.dart';
import 'package:chat_test_app/views/home/views/home.dart';
import 'package:chat_test_app/views/task_2/views/cake_details_screen.dart';
import 'package:chat_test_app/views/task_2/views/cake_list_screen.dart';
import 'package:chat_test_app/views/task_2/views/module_list_screen.dart';
import 'package:chat_test_app/views/voice_room/views/voice_room_screen.dart';

class AppRoutes {
  //AUTHENTICATION
  static const String LOGIN = Login.routeName;
  static const String SIGNUP = SignUp.routeName;

  //HOME
  static const String HOME = Home.routeName;

  //VOICE_ROOM
  static const String VOICE_ROOM = VoiceRoomScreen.routeName;
  //CHAT_SCREEN
  //static const String CHAT_SCREEN = ChatScreen.routeName;

  //TASK_2_SCREEN
  static const String MODULE_LIST_SCREEN = ModuleListScreen.routeName;
  static const String CAKE_LIST_SCREEN = CakeListScreen.routeName;
  static const String CAKE_DETAILS_SCREEN = CakeDetailScreen.routeName;
}
