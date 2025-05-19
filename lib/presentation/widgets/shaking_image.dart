import 'dart:async';
import 'package:flutter/material.dart';

class ShakingImage extends StatefulWidget {
  final String imagePath;
  final Duration interval;

  const ShakingImage({
    super.key,
    required this.imagePath,
    this.interval = const Duration(seconds: 5),
  });

  @override
  State<ShakingImage> createState() => _ShakingImageState();
}

class _ShakingImageState extends State<ShakingImage> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0, end: 10), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 10, end: -10), weight: 2),
      TweenSequenceItem(tween: Tween(begin: -10, end: 10), weight: 2),
      TweenSequenceItem(tween: Tween(begin: 10, end: 0), weight: 1),
    ]).animate(_controller);

    _timer = Timer.periodic(widget.interval, (_) {
      _controller.forward(from: 0);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_animation.value, 0),
          child: child,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), 
        child: Image.asset(widget.imagePath),
      ),
    );
  }
}
