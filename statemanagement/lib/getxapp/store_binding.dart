import 'package:get/get.dart';
import 'package:statemanagement/getxapp/controllers/store_controller.dart';

class StoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreController());
  }
}
