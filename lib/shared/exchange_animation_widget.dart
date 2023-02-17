import 'package:flutter/material.dart';

class ExchangeAnimationFade extends StatefulWidget {
  final Widget firstWidget;
  final Widget secondWidget;
  final Duration? duration;
  final bool animationForward;
  const ExchangeAnimationFade({
    Key? key,
    this.animationForward = false,
    this.duration,
    required this.firstWidget,
    required this.secondWidget,
  }) : super(key: key);

  @override
  State<ExchangeAnimationFade> createState() => _ExchangeAnimationFadeState();
}

class _ExchangeAnimationFadeState extends State<ExchangeAnimationFade>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation opacityAnimation;
  bool firstLoading = true;
  int countForward = 0;

  @override
  void initState() {
    super.initState();
    animationControls();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.animationForward && countForward == 0) {
      animationController.forward();
      countForward++;
    }
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        return Opacity(
          opacity: opacityAnimation.value,
          child: firstLoading ? widget.firstWidget : widget.secondWidget,
        );
      },
    );
  }

  animationControls() {
    animationController = AnimationController(
        animationBehavior: AnimationBehavior.preserve,
        vsync: this,
        duration: widget.duration ?? const Duration(milliseconds: 400));

    opacityAnimation = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 0.4),
      ),
    );

    animationController.addStatusListener((status) {
      if (animationController.value > 0.3) {
        firstLoading = false;
        animationController.reverse();
      }
    });
  }
}
