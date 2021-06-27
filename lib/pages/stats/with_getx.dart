import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/pages/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  Widget _button(String id) {
    return TextButton(
      onPressed: () {
        Get.find<CountControllerWithGetX>().increase(id);
      },
      child: Text(
        "+",
        style: TextStyle(fontSize: 50),
      ),
    );
  }

  Widget _GetBuilder(String? id){
    // ID를 부여해서 같은 컨트롤로를 두곳에서 쓸 수 도 있다.
    return GetBuilder<CountControllerWithGetX>(id: id,builder: (controller) {
       if(id != null && id == "first"){
         return Text("${controller.count}", style: TextStyle(fontSize: 50));
       } else {
         return Text("${controller.count1}", style: TextStyle(fontSize: 50));
       }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 50)),
          _GetBuilder("first"),
          _GetBuilder("second"),
          _button("first"),
          _button("second")
        ],
      ),
    );
  }
}
