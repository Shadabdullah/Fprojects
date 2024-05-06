import 'package:flutter/material.dart';
import 'package:responsiveui/dashboard/constants.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextField(
            decoration: InputDecoration(
      filled: true,
      fillColor: cardBackgroundColor,
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Theme.of(context).primaryColor)),
      contentPadding: const EdgeInsets.symmetric(vertical: 5),
      hintText: 'search',
      prefixIcon: Icon(
        Icons.search,
        size: 21,
        color: Colors.grey,
      ),
    )));
  }
}
