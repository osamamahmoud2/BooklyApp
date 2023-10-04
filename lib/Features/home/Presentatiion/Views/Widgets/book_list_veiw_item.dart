import 'package:flutter/material.dart';

class Listveiwitem extends StatelessWidget {
  const Listveiwitem({super.key, required this.imageurl});
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.transparent,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('Assets/Images/book.png'),
          ),
        ),
      ),
    );
  }
}
