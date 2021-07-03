import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/dependencys/dependency_controller.dart';


class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // Get.put(DependencyController()); // 이제 어디서든지 사용이 가능하다.

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.find<DependencyController>().incress();
            },
            child: Text("")),
      ),
    );
  }
}
