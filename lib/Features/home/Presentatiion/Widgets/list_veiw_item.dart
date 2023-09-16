import 'package:bokly/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class Listveiwitem extends StatelessWidget {
  const Listveiwitem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.red,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assetdata.testIamge),
          ),
        ),
      ),
    );
  }
}
