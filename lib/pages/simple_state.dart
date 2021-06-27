import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:testgetx/pages/controller/count_controller_with_provider.dart';
import 'package:testgetx/pages/stats/with_getx.dart';
import 'package:testgetx/pages/stats/with_provider.dart';

import 'controller/count_controller_with_getx.dart';

class SimpleState extends StatelessWidget {
  const SimpleState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetX()); // 이제 어디서든지 사용이 가능하다.

    return Scaffold(
      appBar: AppBar(
        title: Text("단순 상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: WithGetX()),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
