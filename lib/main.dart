import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:mouse_follower/mouse_follower.dart';
import 'package:nukeem/presentation/nukeem_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'dart:html' as html;


void main() {
  setUrlStrategy(PathUrlStrategy());
  enableCustomCursor();
  runApp(const MyApp());
}

void enableCustomCursor() {
  final cursor = html.document.getElementById('custom-cursor');
  if (cursor == null) return;

  html.document.onMouseMove.listen((event) {
    cursor.style
      ..display = 'block'
      ..left = '${event.page.x - 35}px'
      ..top = '${event.page.y - 35}px'; // Center the 70px cursor
  });
}

void changeCursorImage(String imagePath) {
  final cursor = html.document.getElementById('custom-cursor');
  if (cursor != null) {
    cursor.style.backgroundImage = "url('$imagePath')";
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nuke-Em',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: double.infinity, name: DESKTOP),
        ],
      ),
      home: const NukeEmScreenWrapper(),
    );
  }
}
