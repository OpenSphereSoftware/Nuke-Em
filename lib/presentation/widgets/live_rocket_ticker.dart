import 'dart:math';

import 'package:flutter/widgets.dart';

class LiveRocketTicker extends StatefulWidget {
  final double width;
  const LiveRocketTicker({super.key, required this.width});

  @override
  State<LiveRocketTicker> createState() => _LiveRocketTickerState();
}

class _LiveRocketTickerState extends State<LiveRocketTicker> {
  final List<_RocketData> _rockets = [];
  final Random _random = Random();
  late Size size;

  @override
  void initState() {
    size = Size(widget.width, 120);
    super.initState();
    _startLaunching();
  }

  void _startLaunching() async {
    while (mounted) {
      await Future.delayed(Duration(milliseconds: _random.nextInt(400) + 200));

      final id = UniqueKey();
      final rocket = _RocketData(
        id: id,
        imageIndex: _random.nextInt(6), // 0 to 5
        left: _random.nextDouble() * size.width * 0.9,
        duration: Duration(milliseconds: _random.nextInt(2000) + 100),
      );

      setState(() => _rockets.add(rocket));

      // Remove rocket after flight
      Future.delayed(rocket.duration, () {
        if (mounted) {
          setState(() => _rockets.removeWhere((r) => r.id == rocket.id));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: _rockets.map((rocket) {
        return _FlyingRocket(
          rocket: rocket,
          size: size,
        );
      }).toList(),
    );
  }
}

class _RocketData {
  final Key id;
  final int imageIndex;
  final double left;
  final Duration duration;

  _RocketData({
    required this.id,
    required this.imageIndex,
    required this.left,
    required this.duration,
  });
}

class _FlyingRocket extends StatefulWidget {
  final Size size;
  final _RocketData rocket;

  const _FlyingRocket({required this.rocket, required this.size});

  @override
  State<_FlyingRocket> createState() => _FlyingRocketState();
}

class _FlyingRocketState extends State<_FlyingRocket> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _positionAnim;

  late Size size;

  @override
  void initState() {
    size = widget.size;
    _controller = AnimationController(duration: widget.rocket.duration, vsync: this)..forward();
    _positionAnim = Tween<double>(begin: size.height, end: 0).animate(_controller);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _positionAnim,
      builder: (_, __) {
        return Positioned(
          left: widget.rocket.left,
          top: _positionAnim.value,
          child: Image.asset(
            'assets/rockets/${widget.rocket.imageIndex}.png',
            width: 30,
          ),
        );
      },
    );
  }
}
