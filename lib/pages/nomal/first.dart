import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/pages/nomal/SecondPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("첫번째 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage())); // 기존 방식
                  Get.to(SecondPage()); // GetX 방식
                },
                child: Text("다음페이지"))
          ],
        ),
      ),
    );
  }
}
