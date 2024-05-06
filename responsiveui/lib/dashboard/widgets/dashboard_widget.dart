import 'package:flutter/material.dart';
import 'package:responsiveui/dashboard/widgets/activity_detailcard.dart';
import 'package:responsiveui/dashboard/widgets/header_widget.dart';

class DashBoardWidget extends StatefulWidget {
  const DashBoardWidget({super.key});

  @override
  State<DashBoardWidget> createState() => _DashBoardWidgetState();
}

class _DashBoardWidgetState extends State<DashBoardWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        HeaderWidget(),
        SizedBox(
          height: 40,
        ),
        ActivityDetailCard()
      ],
    );
  }
}
