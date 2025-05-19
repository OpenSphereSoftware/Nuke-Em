import 'package:flutter/material.dart';
import 'package:nukeem/presentation/style.dart';

class StandardCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  const StandardCard({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppStyle.colors.layer1,
        borderRadius: BorderRadius.circular(AppStyle.spacings.xs),
        boxShadow: [
          BoxShadow(
              color: AppStyle.colors.accent.withOpacity(0.15), // glow color
              blurRadius: 20, // softness of the glow
              spreadRadius: 2, // how far the glow spreads
              offset: Offset(4, 4))
        ],
      ),
      child: Padding(
        padding: padding?? EdgeInsets.symmetric(horizontal: AppStyle.spacings.s, vertical: AppStyle.spacings.m),
        child: child,
      ),
    );
  }
}
