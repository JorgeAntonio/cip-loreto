import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';

class FlutterAppDot extends StatelessWidget {
  const FlutterAppDot({
    super.key,
    this.dimension = 8,
    this.color = Palette.white,
  });
  final double dimension;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
