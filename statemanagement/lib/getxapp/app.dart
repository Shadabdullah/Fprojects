import 'package:flutter/material.dart';

class GetxApp extends StatelessWidget {
  const GetxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HomePageGetx(),
    );
  }
}

class HomePageGetx extends StatelessWidget {
  const HomePageGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("GetxApp"),
      ),
    );
  }
}
