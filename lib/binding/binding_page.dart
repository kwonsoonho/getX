import 'package:get/get.dart';
import 'package:testgetx/pages/controller/count_controller_with_getx.dart';

class BindingPage_binding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(CountControllerWithGetX());

  }

}