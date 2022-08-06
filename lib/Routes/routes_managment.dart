import 'package:get/get.dart';
import 'package:userapp/Module/AddReportToAdmin/View/add_report_to_admin_screen.dart';
import 'package:userapp/Module/AddReportToGateKeeper/View/add_report_to_gatekeeper_screen.dart';
import 'package:userapp/Module/ChatAvailbility/View/chat_availbility_screen.dart';
import 'package:userapp/Module/ChatScreen/View/chat_screen.dart';
import 'package:userapp/Module/Events/View/events_screen.dart';
import 'package:userapp/Module/LoginScreen/View/login_screen.dart';
import 'package:userapp/Module/ReportToAdmin/View/report_to_admin_screen.dart';
import 'package:userapp/Module/ReportToGateKeeper/View/report_to_gatekeeper_screen.dart';
import 'package:userapp/Module/Splash/View/splash_screen.dart';
import 'package:userapp/Module/UserHomeScreen/View/user_home_screen.dart';
import 'package:userapp/Routes/screen_binding.dart';
import 'package:userapp/Routes/set_routes.dart';

class RouteManagement {
  static List<GetPage> getPages() {
    return [
      GetPage(
          name: splashscreen,
          page: () => SplashScreen(),
          binding: ScreenBindings(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1)),
      GetPage(
          name: loginscreen,
          page: () => LoginScreen(),
          binding: ScreenBindings(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1)),
      GetPage(
          name: userhomecreen,
          page: () => UserHomeScreen(),
          binding: ScreenBindings(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1)),
      GetPage(
          name: eventsscreen,
          page: () => EventsScreen(),
          binding: ScreenBindings(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1)),
      GetPage(
          name: chatscreen,
          page: () => ChatScreen(),
          binding: ScreenBindings(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1)),
      GetPage(
          name: chatavailbilityscreen,
          page: () => ChatAvailbilityScreen(),
          binding: ScreenBindings(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1)),
      GetPage(
          name: addreporttoadminscreen,
          page: () => AddReportToAdminScreen(),
          binding: ScreenBindings(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1)),
      GetPage(
          name: reporttoadminscreen,
          page: () => ReportToAdminScreen(),
          binding: ScreenBindings(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1)),
      GetPage(
          name: reporttogatekeeperscreen,
          page: () => ReportToGateKeeperScreen(),
          binding: ScreenBindings(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1)),
      GetPage(
          name: addreporttogatekeeperscreen,
          page: () => AddReportToGateKeeperScreen(),
          binding: ScreenBindings(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1)),
    ];
  }
}
