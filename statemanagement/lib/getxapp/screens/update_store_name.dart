import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/getxapp/controllers/store_controller.dart';

import '../widgets/rounded_input.dart';

class UpdateStoreName extends StatelessWidget {
  UpdateStoreName({super.key});

  final storeController = Get.find<StoreController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedInput(
            hintText: "Store Name",
            controller: storeController.storeNameEditingController,
          ),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                storeController.updateStoreName(
                    storeController.storeNameEditingController.text);
                Get.snackbar('Updated',
                    'Store Name has been Updated ${storeController.storeNameEditingController.text}');
              },
              child: const Text('Update'))
        ],
      ),
    );
  }
}
