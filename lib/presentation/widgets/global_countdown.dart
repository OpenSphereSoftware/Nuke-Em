import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nukeem/presentation/style.dart';

class GlobalCountdown extends StatefulWidget {
  const GlobalCountdown({super.key});

  @override
  State<GlobalCountdown> createState() => _GlobalCountdownState();
}

class _GlobalCountdownState extends State<GlobalCountdown> {
  static const Duration initialDuration = Duration(hours: 2, minutes: 33);
  late DateTime _endTime;
  late Timer _timer;
  Duration _remaining = initialDuration;

  @override
  void initState() {
    super.initState();
    _endTime = DateTime.now().add(initialDuration);
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      final now = DateTime.now();
      final diff = _endTime.difference(now);
      if (diff <= Duration.zero) {
        _timer.cancel();
        setState(() {
          _remaining = Duration.zero;
        });
      } else {
        setState(() {
          _remaining = diff;
        });
      }
    });
  }

  String _formatTime(Duration duration) {
    final hours = duration.inHours.toString().padLeft(2, '0');
    final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    final milliseconds = (duration.inMilliseconds % 1000 ~/ 10).toString().padLeft(2, '0'); // 2-digit ms
    return '$hours:$minutes:$seconds:$milliseconds';
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isUnder15Minutes = _remaining < const Duration(minutes: 15);
    final countdownStyle = AppStyle.textStyles.h1.regular.light.copyWith(
      fontSize: 46,
      color: isUnder15Minutes ? Colors.yellow : AppStyle.colors.light,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Places Nuke Count Resets In',
          style: AppStyle.textStyles.h4.regular.lightGrey,
          textAlign: TextAlign.center,
        ),
        Flexible(
          child: Text(
            _formatTime(_remaining),
            style: countdownStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
