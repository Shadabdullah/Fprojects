import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import 'getxz/count_controller.dart';

class GetxApp extends StatelessWidget {
  const GetxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HomePageGetx(),
    );
  }
}

class HomePageGetx extends StatelessWidget {
  const HomePageGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<CountController>(
              init: CountController(),
              builder: (_) => Text(_.count.toString())),
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {
                Get.find<CountController>().increment();
              },
              child: Text(''))
        ],
      )),
    );
  }
}
