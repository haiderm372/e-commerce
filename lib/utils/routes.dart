import 'package:get/get.dart';

import '../modules/authentication/login/login_screen.dart';
import '../modules/authentication/register/register_screen.dart';
import '../modules/main/chat/chat_screen.dart';
import '../modules/main/first/first_screen.dart';
import '../modules/main/home/home_screen.dart';
import '../modules/main/profile/profile_screen.dart';

class GetRoutes {
  static List<GetPage<dynamic>>? getPages = [
    //Initial Screens
    GetPage(
      name: LoginScreen.route,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: RegisterScreen.route,
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: FirstScreen.route,
      page: () => FirstScreen(),
    ),
    GetPage(
      name: HomeScreen.route,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: ChatScreen.route,
      page: () => const ChatScreen(),
    ),
    GetPage(
      name: ProfileScreen.route,
      page: () => const ProfileScreen(),
    ),
  ];
}
