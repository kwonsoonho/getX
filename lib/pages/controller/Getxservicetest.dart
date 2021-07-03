import 'package:get/get.dart';

class GetxServiceTestService extends GetxService{
  static GetxServiceTestService get to => Get.find();
  RxInt count = 0.obs;

  void increase(){
    count ++;
  }

  // void clear(){
  //   Get.reset();
  // }
}