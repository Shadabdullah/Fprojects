import 'package:flutter/material.dart';
import 'package:responsiveui/dashboard/widgets/dashboard_widget.dart';
import 'package:responsiveui/dashboard/widgets/side_menu.dart';

class DashBoradHomePage extends StatelessWidget {
  const DashBoradHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          const Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenuWidget(),
              )),
          Expanded(flex: 7, child: DashBoardWidget()),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.pink[100],
              ))
        ],
      )),
    );
  }
}
