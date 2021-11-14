import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'modules/splash/splash_page.dart';

class AppRoutes {
  static const splashPage = '/splash';
  static const homePage = '/home';
  static const loginPage = '/login';

  static final routes = {
    splashPage: (context) => const SplashPage(),
    homePage: (context) => const HomePage(),
    loginPage: (context) => const LoginPage(),
  };
}
