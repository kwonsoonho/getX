
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/src/srcHome.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

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
            // Text("${Get.arguments['name']} : ${Get.arguments['age']}"), //arguments로 넘겨 받았을 경우
            Text("${(Get.arguments as User).name} : ${(Get.arguments as User).age}"), // 객체로 넘겨 받았을 경우
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
