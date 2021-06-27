import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:testgetx/pages/named/Next.dart';
import 'package:testgetx/pages/named/SecondPage.dart';
import 'package:testgetx/pages/named/UserPage.dart';
import 'package:testgetx/pages/named/first.dart';
import 'package:testgetx/src/srcHome.dart';

void main() {
  runApp(MyApp());
}

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
        GetPage(name: '/', page: ()=>HomeScreen(),transition: Transition.size ),
        GetPage(name: '/first', page: ()=>NamedFirstPage(),transition: Transition.downToUp),
        GetPage(name: '/second', page: ()=>NamedSecondPage(),transition: Transition.cupertinoDialog),
        GetPage(name: '/next', page: ()=>NextPage(),transition: Transition.cupertinoDialog),
        GetPage(name: '/user/:uid', page: ()=>UserPage(),transition: Transition.cupertinoDialog),
      ],
    );
  }
}
