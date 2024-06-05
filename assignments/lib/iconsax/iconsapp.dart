import 'package:assignments/iconsax/iconsax_home.dart';
import 'package:flutter/material.dart';

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
