import 'package:get/get.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/screens/start_screen/start_screen.dart';
import 'package:doc_app/screens/splash_screen/splash_screen.dart';


class AppPages extends AppRoute{
  static const String initialroute = AppRoute.splash;
  static final routes = [
    GetPage(name: AppRoute.splash, page: ()=> const SplashScreen()),
    GetPage(name: AppRoute.start, page: ()=>  StartScreen()),
  ];
}