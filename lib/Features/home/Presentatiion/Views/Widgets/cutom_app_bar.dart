import 'package:bokly/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
      child: Row(
        children: [
          Image.asset(
            Assetdata.logo,
            height: 22,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Image.asset('Assets/Images/ic search.png')),
        ],
      ),
    );
  }
}
