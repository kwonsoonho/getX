import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/pages/ReactiveStateManagePage.dart';
import 'package:testgetx/pages/nomal/first.dart';
import 'package:testgetx/pages/simple_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage())); // 기존 방식
                  Get.to(FirstPage()); // GetX 방식
                },
                child: Text("일반 전환")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed("/first"); // 기존 방식
                  Get.toNamed("/first"); // GetX 방식
                },
                child: Text("이름으로 전환")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed("/first"); // 기존 방식
                  // Get.toNamed("/next", arguments: "name : 수노, age : 32"); // arguments 에 값을 넘겨 줌 여러가지 형태 가능
                  Get.toNamed("/next", arguments: User(name: "수노수노", age: 32)); // arguments 에 객체를 넘겨 줌
                },
                child: Text("Arguments 전달")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed("/first"); // 기존 방식
                  Get.toNamed("/user/28357?name=수누&age=22"); // GetX 방식
                },
                child: Text("동적 Url")),
            ElevatedButton(
                onPressed: () {
                  Get.to(SimpleState());
                },
                child: Text("단순 상태관리")),
            ElevatedButton(
                onPressed: () {
                  Get.to(ReactiveStateManagePage());
                },
                child: Text("반응형 상태관리")),
          ],
        ),
      ),
    );
  }
}

class User {
  String? name;
  int? age;

  User({this.name, this.age});
}
