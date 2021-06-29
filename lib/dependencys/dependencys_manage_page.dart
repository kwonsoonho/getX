import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/dependencys/get_put.dart';

import 'dependency_controller.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성 주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(
                    GetPut(),
                    binding: BindingsBuilder(() {
                      Get.put(DependencyController()); // 페이지 전환 하면서 메모리에 올려주고 페이지가 닫힐 때 자동으로 삭제해준다.
                    }),
                  );
                },
                child: Text("Get put")),
            ElevatedButton(onPressed: () {}, child: Text("")),
            ElevatedButton(onPressed: () {}, child: Text("")),
            ElevatedButton(onPressed: () {}, child: Text("")),
          ],
        ),
      ),
    );
  }
}
