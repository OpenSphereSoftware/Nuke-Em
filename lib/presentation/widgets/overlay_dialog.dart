import 'package:flutter/material.dart';
import 'package:nukeem/presentation/style.dart';
import 'package:nukeem/presentation/widgets/standard_card.dart';

class OverlayDialog extends StatelessWidget {
  final Widget child;
  final VoidCallback onClose;

  const OverlayDialog({
    super.key,
    required this.child,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Stack(
          children: [
            // Darkened background overlay
            GestureDetector(
              onTap: onClose,
              child: Container(
                color: Colors.black.withAlpha(700),
              ),
            ),
            // Centered content
            Center(
              child: StandardCard(
                padding: EdgeInsets.all(AppStyle.spacings.m),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: onClose,
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Icon(
                              Icons.close,
                              color: AppStyle.colors.light,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: AppStyle.spacings.xs),
                    child,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Helper class to show the overlay dialog
class OverlayDialogHelper {
  static Future<void> show({
    required BuildContext context,
    required Widget child,
  }) async {
    return showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.transparent,
      builder: (context) => OverlayDialog(
        onClose: () => Navigator.of(context).pop(),
        child: child,
      ),
    );
  }
}
