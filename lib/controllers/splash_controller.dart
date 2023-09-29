import 'dart:async';
import 'package:get/get.dart';
import 'package:doc_app/routes/app_routes.dart';



class SplashController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 3), () { 
      Get.toNamed(AppRoute.start);
    });
  }
}