import 'package:flutter/material.dart';

class CutomSearchItem extends StatelessWidget {
  const CutomSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search ',
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.white24,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}
