
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/src/srcHome.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("다음 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${(Get.parameters['uid'])}"),
            Text("${(Get.parameters['name'])}님 안녕하세요."),
            Text("${(Get.parameters['age'])}"),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop(); // 기존 방식
                Get.back(); // GetX 방식
              },
              child: Text("뒤로 이동"),
            ),
          ],
        ),
      ),
    );
  }
}
