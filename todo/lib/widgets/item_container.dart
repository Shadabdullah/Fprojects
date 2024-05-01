import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/widgets/category_icons.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[200]!))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // CategoryIcon(icon: Icons.dining_outlined, color: Colors.yellow[100]!),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Sprint',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                '5:00 AM',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
          Transform.scale(
            scale: 1.5,
            child: Checkbox(
                fillColor: MaterialStateProperty.all(const Color(0xFFFFFFFF)),
                checkColor: const Color(0xFF240A34),
                value: false,
                activeColor: Colors.redAccent,
                side: const BorderSide(color: Colors.black87),
                onChanged: (newValue) {}),
          ),
        ],
      ),
    );
  }
}
