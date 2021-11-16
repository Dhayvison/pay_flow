import 'modules/barcode_scanner/barcode_scanner_page.dart';
import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'modules/splash/splash_page.dart';

class AppRoutes {
  static const splashPage = '/splash';
  static const homePage = '/home';
  static const loginPage = '/login';
  static const barcodeScannerPage = '/barcode_scanner';

  static final routes = {
    splashPage: (context) => const SplashPage(),
    homePage: (context) => const HomePage(),
    loginPage: (context) => const LoginPage(),
    barcodeScannerPage: (context) => const BarcodeScannerPage(),
  };
}
