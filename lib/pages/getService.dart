import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/Getxservicetest.dart';

class GetxServicePage extends GetView<GetxServiceTestService> {
  const GetxServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            // GetBuilder(builder: (_)=> Text(controller.count.value.toString())),
            // Obx(() => Text(controller.count.toString())), // controller에 접근해서 해당 값을 불러온다.
            ElevatedButton(
                onPressed: () {
                  controller.increase();
                },
                child: Text("증가")),
            ElevatedButton(
                onPressed: () {
                  Get.reset();
                },
                child: Text("데이터 삭제")),
          ],
        ),
      ),
    );
  }
}
