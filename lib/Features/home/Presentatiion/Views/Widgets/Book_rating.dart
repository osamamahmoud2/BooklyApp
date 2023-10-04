import 'package:bokly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRateing extends StatelessWidget {
  const BookRateing({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          size: 18,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: Styles.textstyle16,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          '(2156)',
          style: Styles.textstyle14.copyWith(
              color: const Color(0xff707070), fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
