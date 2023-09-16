import 'package:book_shop/core/utils/router/route_names.dart';
import 'package:book_shop/core/widgets/custom_app_logo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final width = size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomAppLogo(
          height: width * 0.2,
        ),
        const SizedBox(height: 4),
        SlidingText(
          animationController: animationController,
          slidingAnimation: slidingAnimation,
        )
      ],
    );
  }

  /// Initial sliding animation
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0.0, 5.0),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  /// Navigate to home
  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        context.pushReplacementNamed(
          RouteNames.homeView,
        );

        // Get.offAll(
        //   () => const HomeView(),
        //   transition: Transition.fadeIn,
        //   duration: kTransitionDuration,
        // );
      },
    );
  }
}
