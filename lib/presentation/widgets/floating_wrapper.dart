import 'dart:math';

import 'package:flutter/material.dart';

class FloatingWrapper extends StatefulWidget {
  final Widget child;
  const FloatingWrapper({super.key, required this.child});

  @override
  State<FloatingWrapper> createState() => _FloatingWrapperState();
}

class _FloatingWrapperState extends State<FloatingWrapper> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(); // Loops the animation forever
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Sine wave for smooth up-down motion
  double _getYOffset(double value) {
    return sin(value * 2 * pi) * 5; // Amplitude = 10px
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _getYOffset(_controller.value)),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
