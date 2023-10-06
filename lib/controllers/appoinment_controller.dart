import 'package:get/get.dart';



class AppoinmentController extends GetxController{

  var index = 0.obs;

  void changeIndextoUppcoming(){
    if(index.value == 0){
      index.value++;
      update();
    }
  }

  void changeIndextoToday(){
    if(index.value == 1){
      index.value--;
      update();
    }
  }
}