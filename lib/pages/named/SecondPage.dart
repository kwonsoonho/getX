import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/src/srcHome.dart';

class NamedSecondPage extends StatelessWidget {
  const NamedSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("이름있는 두번째 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop(); // 기존 방식
                Get.back(); // GetX 방식
              },
              child: Text("뒤로 이동"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context)
                //     .pushAndRemoveUntil(MaterialPageRoute(builder: (_) => HomeScreen()), (route) => false); // 기존 방식
                Get.offAllNamed("/"); // GetX 방식
              },
              child: Text("홈으로 이동"),
            ),
          ],
        ),
      ),
    );
  }
}
