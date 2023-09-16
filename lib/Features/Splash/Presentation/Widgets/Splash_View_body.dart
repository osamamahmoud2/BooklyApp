import 'package:bokly/Features/home/Presentatiion/home_veiw.dart';
import 'package:bokly/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashVeiwBody extends StatefulWidget {
  const SplashVeiwBody({super.key});

  @override
  State<SplashVeiwBody> createState() => _SplashVeiwBodyState();
}

class _SplashVeiwBodyState extends State<SplashVeiwBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcontroller;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    initslidinganimation();
    super.initState();
    navigateToHomepage();
  }

  @override
  void dispose() {
    super.dispose();
    animationcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
            animation: slidinganimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidinganimation,
                child: Image.asset(
                  Assetdata.logo,
                ),
              );
            }),
        AnimatedBuilder(
            animation: slidinganimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidinganimation,
                child: const Text(
                  "Read Free Books",
                  textAlign: TextAlign.center,
                ),
              );
            })
      ],
    );
  }

  void navigateToHomepage() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const Homeveiw(), transition: Transition.fade);
    });
  }

  void initslidinganimation() {
    animationcontroller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationcontroller);
    animationcontroller.forward();
    slidinganimation.addListener(() {
      setState(() {});
    });
  }
}
