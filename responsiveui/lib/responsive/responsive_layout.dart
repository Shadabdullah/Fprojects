import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;

  final Widget desktopScaffold;
  final Widget tabletScaffold;
  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.desktopScaffold,
      required this.tabletScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < 500
            ? mobileScaffold
            : constraints.maxWidth < 1100
                ? tabletScaffold
                : desktopScaffold;
      },
    );
  }
}
