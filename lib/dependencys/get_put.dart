import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
          onPressed: () {
            Get.find<DependencyController>().incress();
          },
          child: Text("")),
    );
  }
}
