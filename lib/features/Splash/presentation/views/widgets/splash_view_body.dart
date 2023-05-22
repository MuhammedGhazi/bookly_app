import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:my_bookly/features/home/presentation/views/home.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  late Animation s;
  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlideText(slideAnimation: slideAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    slideAnimation = Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(milliseconds: 2000),
      () {
        Get.to(() => const HomePage(), transition: Transition.fade);
      },
    );
  }
}
