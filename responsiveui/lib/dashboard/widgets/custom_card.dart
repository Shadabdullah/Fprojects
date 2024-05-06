import 'package:flutter/material.dart';
import 'package:responsiveui/dashboard/constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child, this.color, this.padding});
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: color ?? cardBackgroundColor),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(12),
        child: child,
      ),
    );
  }
}
