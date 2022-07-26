import 'package:get/get.dart';
import 'package:userapp/Module/ChatAvailbility/View/chat_availbility_screen.dart';
import 'package:userapp/Module/ChatScreen/View/chat_screen.dart';
import 'package:userapp/Module/Events/View/events_screen.dart';
import 'package:userapp/Module/LoginScreen/View/login_screen.dart';
import 'package:userapp/Module/Splash/View/splash_screen.dart';
import 'package:userapp/Module/UserHomeScreen/View/user_home_screen.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreen());
    Get.lazyPut(() => LoginScreen());
    Get.lazyPut(() => UserHomeScreen());
    Get.lazyPut(() => EventsScreen());
    Get.lazyPut(() => ChatScreen());
    Get.lazyPut(() => ChatAvailbilityScreen());
    
    
  }
}
