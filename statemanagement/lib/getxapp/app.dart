import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/getxapp/controllers/store_controller.dart';
import 'package:statemanagement/getxapp/store_binding.dart';

class GetxApp extends StatelessWidget {
  const GetxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: StoreBinding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HomeGetx(),
    );
  }
}

class HomeGetx extends GetView<StoreController> {
  const HomeGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      )),
    );
  }
}
