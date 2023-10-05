import 'package:flutter/material.dart';

class CutomSearchItem extends StatefulWidget {
  const CutomSearchItem({super.key});

  @override
  State<CutomSearchItem> createState() => _CutomSearchItemState();
}

class _CutomSearchItemState extends State<CutomSearchItem> {
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

String? searchSubject;
