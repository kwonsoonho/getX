import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/pages/controller/count_controller_with_reactive.dart';
import 'controller/count_controller_with_getx.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithreactive()); // 이제 어디서든지 사용이 가능하다.

    return Scaffold(
      appBar: AppBar(
        title: Text("반응형 상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GetX", style: TextStyle(fontSize: 50)),
            Obx(() {
              // print("수정");
              return Text("${Get.find<CountControllerWithreactive>().count.value}", style: TextStyle(fontSize: 50));
            }),
            TextButton(
              onPressed: () {
                Get.find<CountControllerWithreactive>().increase();
              },
              child: Text(
                "+",
                style: TextStyle(fontSize: 50),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.find<CountControllerWithreactive>().putNumber(5);
              },
              child: Text(
                "5로 변경",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
