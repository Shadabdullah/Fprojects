import 'package:get/get.dart';

class CountController extends GetxController {
  int count = 0;

  static CountController get to => Get.find();

  void increment() {
    count++;
    update();
  }
}
