import 'package:flutter/material.dart';

import 'iconsax_home.dart';

class IconsaxApp extends StatelessWidget {
  const IconsaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: const IconsaxView());
  }
}
