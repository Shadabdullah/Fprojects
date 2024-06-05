import 'package:flutter/material.dart';
import 'package:iconsaxapp/homepage.dart';

class IconsaxApp extends StatelessWidget {
  const IconsaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const IconsaxHomePage(),
    );
  }
}
