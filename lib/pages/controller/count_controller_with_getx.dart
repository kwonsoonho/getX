import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController{
  int count = 0 ;
  int count1 = 0 ;

  void increase(String id){
    if(id == "first"){
      count ++;
      update([id]);
    } else {
      count1 ++;
      update([id]);
    }
  }
}