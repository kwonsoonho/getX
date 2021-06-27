import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/pages/nomal/SecondPage.dart';

class NamedFirstPage extends StatelessWidget {
  const NamedFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("이름있는 첫번째 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage())); // 기존 방식
                  Get.toNamed("/second"); // GetX 방식
                },
                child: Text("다음페이지"))
          ],
        ),
      ),
    );
  }
}
