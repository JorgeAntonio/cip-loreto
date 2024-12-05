import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';

class FlutterAppBaseShimmer extends StatelessWidget {
  const FlutterAppBaseShimmer({
    required this.child,
    super.key,
    this.firstColor,
    this.secondColor,
  });
  final Widget child;
  final Color? firstColor;
  final Color? secondColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      period: duration1800ms,
      gradient: LinearGradient(
        colors: [
          firstColor ?? Palette.grey,
          secondColor ?? Palette.grey.withOpacity(.9),
        ],
      ),
      child: child,
    );
  }
}
