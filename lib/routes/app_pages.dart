import 'package:get/get.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/screens/Book_screen/book.dart';
import 'package:doc_app/screens/sarfara_screen/sarfara.dart';
import 'package:doc_app/screens/sign_up_screen/sign_up.dart';
import 'package:doc_app/screens/sign_in_screen/sign_in.dart';
import 'package:doc_app/screens/start_screen/start_screen.dart';
import 'package:doc_app/screens/treatment_screen/treatment.dart';
import 'package:doc_app/screens/dashboard_screen/dashboard.dart';
import 'package:doc_app/screens/patientDetail/patientDetail.dart';
import 'package:doc_app/screens/splash_screen/splash_screen.dart';
import 'package:doc_app/screens/appoinment_screen/appoinment.dart';
import 'package:doc_app/screens/payment_Screen/payment_screen.dart';

class AppPages extends AppRoute {
  static const String initialroute = AppRoute.start;
  static final routes = [
    GetPage(
      name: AppRoute.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoute.start,
      page: () => StartScreen(),
    ),
    GetPage(
      name: AppRoute.signIn,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: AppRoute.signUp,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: AppRoute.dashboard,
      page: () => DashboardScreen(),
    ),
    GetPage(
      name: AppRoute.appoinment,
      page: () => AppoinmentScreen(),
    ),
    GetPage(
      name: AppRoute.book,
      page: () => BookScreen(),
    ),
    GetPage(
      name: AppRoute.sarfara,
      page: () => SarfaraScreen(),
    ),
    GetPage(
      name: AppRoute.patientDetail,
      page: () => PatientDetailScreen(),
    ),
    GetPage(
      name: AppRoute.treatment,
      page: () => TreatmentScreen(),
    ),
    GetPage(
      name: AppRoute.payment,
      page: () => PaymentScreen(),
    ),
  ];
}
