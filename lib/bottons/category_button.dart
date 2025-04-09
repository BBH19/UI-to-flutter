import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, size: 35, color: Colors.black),
        ),
        const SizedBox(height: 4),
        Text(label,
            style: const TextStyle(
              // fontWeight: FontWeight.w600,
              color: Colors.white,
            )),
      ],
    );
  }
}

