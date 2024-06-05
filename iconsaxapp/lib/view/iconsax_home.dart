import 'package:flutter/material.dart';
import 'package:iconsaxapp/view/iconmap.dart';

import 'icon_container.dart';

class IconsaxView extends StatelessWidget {
  const IconsaxView({super.key});

  @override
  Widget build(BuildContext context) {
    final iconsmap = iconsaxMap;
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "Iconsax For Flutter ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 1,
                childAspectRatio: 1 / 1),
            itemCount: iconsmap.length,
            itemBuilder: (BuildContext context, int index) {
              String iconName = iconsmap.keys.elementAt(index);
              IconData? iconData = iconsmap[iconName];
              return AspectRatio(
                aspectRatio: 1 / 3,
                child: IconsContainer(
                    index: index, iconName: iconName, icon: iconData),
              );
            },
          )),
    );
  }
}
