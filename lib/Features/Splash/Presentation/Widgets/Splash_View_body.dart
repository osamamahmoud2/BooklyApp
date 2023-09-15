import 'package:bokly/assets.dart';
import 'package:flutter/material.dart';

class SplashVeiwBody extends StatelessWidget {
  const SplashVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      
      Image.asset(Assetdata.logo,),
    const   Text("Read Free Books",textAlign: TextAlign.center,)
    ],);
  }
}