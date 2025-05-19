import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nukeem/presentation/style.dart';
import 'package:nukeem/presentation/widgets/map_wrapper.dart';

class ExplosionMap extends StatefulWidget {
  const ExplosionMap({super.key});

  @override
  State<ExplosionMap> createState() => _ExplosionMapState();
}

class _ExplosionMapState extends State<ExplosionMap> {
  final GlobalKey _mapKey = GlobalKey();
  final List<_ExplosionData> _explosions = [];
  final Random _random = Random();
  final List<int> _sizes = [40, 70, 120, 140];
  Size _mapSize = Size.zero;

  @override
  void initState() {
    super.initState();
    // Wait until the map is laid out before starting explosions
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateMapSize();
      _startExplosionLoop();
    });
  }

  void _updateMapSize() {
    final context = _mapKey.currentContext;
    if (context != null) {
      final box = context.findRenderObject() as RenderBox?;
      if (box != null) {
        setState(() {
          _mapSize = box.size;
        });
      }
    }
  }

  void _startExplosionLoop() {
    Timer.periodic(const Duration(seconds: 2), (_) {
      _updateMapSize(); // just in case layout changed
      _addExplosion();
    });
  }

  void _addExplosion() {
    if (_mapSize == Size.zero) return;

    final size = _sizes[_random.nextInt(_sizes.length)];
    final maxX = _mapSize.width - size;
    final maxY = _mapSize.height - size;

    final x = _random.nextDouble() * maxX;
    final y = _random.nextDouble() * maxY;

    final explosion = _ExplosionData(
      key: UniqueKey(),
      x: x,
      y: y,
      size: size.toDouble(),
    );

    setState(() {
      _explosions.add(explosion);
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _explosions.removeWhere((e) => e.key == explosion.key);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          GoogleMapsWrapper(
            key: _mapKey,
            markers: {},
            circles: {},
            onMapTaped: (ltlng) {},
            onCameraIdle: () {},
            onCameraMove: (_) {},
            onMapCreated: (controller) {},
            myLocationEnabled: false,
            accentColor: AppStyle.colors.accent,
            initialZoom: 2,
          ),
          ..._explosions.map((e) => Positioned(
                key: e.key,
                left: e.x,
                top: e.y,
                width: e.size,
                height: e.size,
                child: IgnorePointer(
                  ignoring: true,
                  child: Opacity(
                    opacity: 0.8,
                    child: Lottie.asset(
                      'assets/animations/mini-explosion.json',
                      repeat: false,
                      fit: BoxFit.contain,
                      
                    ),
                  ),
                ),
              )),
        ],
      );
    });
  }
}

class _ExplosionData {
  final Key key;
  final double x;
  final double y;
  final double size;

  _ExplosionData({
    required this.key,
    required this.x,
    required this.y,
    required this.size,
  });
}
