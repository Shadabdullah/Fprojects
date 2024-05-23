import 'package:flutter/material.dart';
import 'package:responsiveui/responsive/responsive_layout.dart';
import 'package:responsiveui/responsive/screens/desktop.dart';
import 'package:responsiveui/responsive/screens/mobile.dart';
import 'package:responsiveui/responsive/screens/tablet.dart';

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: MobileScaffole(),
      tabletScaffold: TabletScaffold(),
      desktopScaffold: DesktopScaffole(),
    );
  }
}
