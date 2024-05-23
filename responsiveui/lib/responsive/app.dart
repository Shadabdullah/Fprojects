import 'package:flutter/material.dart';
import 'package:responsiveui/responsive/home.dart';

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DashboradUI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const ResponsiveHome());
  }
}
