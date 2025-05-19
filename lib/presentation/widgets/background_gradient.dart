import 'package:flutter/material.dart';

class CircularGradientBackground extends StatelessWidget {
  final Widget? child;

  const CircularGradientBackground({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 0.8,
          colors: [
            Color(0xff3a3a3a), // Center color
            Colors.black, // Outer color
          ],
          stops: const [0.0, 0.8],
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding:  EdgeInsets.all(40),
              child: Opacity(opacity: 0.15, child: Image.asset('assets/images/nuclear_sign.png')),
            ),
          ),
          child!,
        ],
      ),
    );
  }
}
