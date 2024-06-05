import 'package:flutter/material.dart';

class IconsContainer extends StatelessWidget {
  final int index;
  final String iconName;
  final IconData? icon;
  const IconsContainer(
      {super.key,
      required this.index,
      required this.icon,
      required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                index.toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Icon(
                icon,
                color: Colors.black,
                size: 35,
              ),
              const SizedBox(height: 20),
              Text(
                iconName,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
