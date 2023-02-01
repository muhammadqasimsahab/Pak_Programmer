
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:pak_programmer/UI/auth/logo/logo_screen.dart';
import 'package:pak_programmer/UI/auth/signUp_screen/signup_screen.dart';
import 'package:pak_programmer/UI/welcome_page.dart';
import 'package:pak_programmer/routes/pgaes.dart';

class AppPages {

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: Paths.SignUpScreen,
        page: () => SignUpScreen(),
        // binding: StudentFindTutorsBinding(),
        transition: Transition.fadeIn
    ),
    GetPage(
        name: Paths.LogInScreen,
        page: () => LogInScreen(),
        // binding: StudentFindTutorsBinding(),
        transition: Transition.fadeIn
    ),
    GetPage(
        name: Paths.WelcomePage,
        page: () => WelcomePage(),
        // binding: StudentFindTutorsBinding(),
        transition: Transition.fadeIn
    )
  ];
}