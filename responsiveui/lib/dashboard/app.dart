import 'package:flutter/material.dart';
import 'package:responsiveui/dashboard/constants.dart';
import 'package:responsiveui/dashboard/homepage.dart';

class DashBoardApp extends StatelessWidget {
  const DashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DashboradUI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: backgroundColor),
        home: const DashBoradHomePage());
  }
}
