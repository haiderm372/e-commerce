import 'package:get/get.dart';

import '../chat/chat_screen.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';

class FirstController extends GetxController {
  var index = 0.obs;
  var screens = const [
    HomeScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];
}
