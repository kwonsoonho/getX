import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:testgetx/binding/binding_page.dart';
import 'package:testgetx/pages/bindingPage.dart';
import 'package:testgetx/pages/controller/count_controller_with_getx.dart';
import 'package:testgetx/pages/named/Next.dart';
import 'package:testgetx/pages/named/SecondPage.dart';
import 'package:testgetx/pages/named/UserPage.dart';
import 'package:testgetx/pages/named/first.dart';
import 'package:testgetx/src/srcHome.dart';

import 'dependencys/dependency_controller.dart';

void main() {
  // initService()
  runApp(MyApp());
}

// void initService(){
  // 이분분에 컨트롤러를 넣어 놓으면 창을 닫을 때 초기화 하지 않고 유지한다.
  // Get.put(CountControllerWithGetX(),permanent: true);
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeScreen(),
      initialRoute: '/',
      // routes: { // 기존 routes 방식
      //   '/' : (context) => HomeScreen(),
      //   '/first' : (context) => NamedFirstPage(),
      //   '/second' : (context) => NamedSecondPage(),
      // },
      getPages: [
        GetPage(name: '/', page: () => HomeScreen(), transition: Transition.size),
        GetPage(name: '/first', page: () => NamedFirstPage(), transition: Transition.downToUp),
        GetPage(name: '/second', page: () => NamedSecondPage(), transition: Transition.cupertinoDialog),
        GetPage(name: '/next', page: () => NextPage(), transition: Transition.cupertinoDialog),
        GetPage(name: '/user/:uid', page: () => UserPage(), transition: Transition.cupertinoDialog),
        GetPage(
          name: '/binding',
          page: () => BindingPage(),
          transition: Transition.cupertinoDialog,
          binding: BindingPage_binding(),
        )
      ],
    );
  }
}
