import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class StoreController extends GetxController {
  final storeName = "Thik Shake".obs;
  final followersCount = 0.obs;
  final storeStaus = true.obs;
  final followerList = [].obs;

  final reviews = <StoreReviews>[].obs;

  final storeNameEditingController = TextEditingController();

  final reviewEditingController = TextEditingController();
  final followerEditingController = TextEditingController();
  final reviewNameController = TextEditingController();

  updateStoreName(String name) {
    storeName(name);
  }

  updateFollowerCount() {
    followersCount(followersCount.value + 1);
  }

  void storeStatusOpen(bool isOpen) {
    storeStaus(isOpen);
  }
}

class StoreReviews {}
