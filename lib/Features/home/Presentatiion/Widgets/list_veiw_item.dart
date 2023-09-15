import 'package:bokly/assets.dart';
import 'package:flutter/material.dart';

class Listveiwitem extends StatelessWidget {
  const Listveiwitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.black,
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage(Assetdata.testIamge)),
          ),
        ),
      ),
    );
  }
}
