import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController{
  static CountControllerWithGetX get to => Get.find();

  int count = 0 ;
  int count1 = 0 ;
  RxInt countRx = 0.obs;

  void increase(String id){
    if(id == "first"){
      count ++;
      update([id]);
    } else {
      count1 ++;
      update([id]);
    }
  }

  void increase1(){
    countRx ++;
  }
}