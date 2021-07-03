import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/pages/controller/count_controller_with_getx.dart';

class BindingPage extends GetView<CountControllerWithGetX> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GetBuilder<CountControllerWithGetX>(builder: (_) {
            return Text(_.count.toString());
          }),
          Obx(() => Text(controller.countRx.toString())),
          ElevatedButton(
              onPressed: () {
                controller.increase1(); // GetView에 컨트롤러를 선언해 놓으면 해당 페이지에서는 더 이상 컨트롤러를 찾지 않아도 된다.
                // CountControllerWithGetX.to.increase1();
              },
              child: Text("data"))
        ],
      ),
    );
  }
}
